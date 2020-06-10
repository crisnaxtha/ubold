<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Str;
use Auth;
use DateTime;
use App\Model\Dcms\File;
use App\Model\Dcms\Language;
use App\Model\Dcms\Category;
use App\Model\Dcms\Eloquent\DM_Post;


class Post extends DM_BaseModel
{
    use SoftDeletes;
     /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at', 'created_at'];

    protected $guarded = [''];

    protected $panel;
    protected $base_route;
    protected $view_path;
    protected $model;
    protected $table = 'posts';

    protected $folder_path_image;
    protected $folder_path_file;
    protected $folder = 'post';
    protected $prefix_path_image = '/upload_file/images/post/';
    protected $prefix_path_file = '/upload_file/files/post/';

    public function __construct() {
        $this->folder_path_image = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
        $this->folder_path_file = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR . 'files' . DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
    }

    public function storeData(Request $request, $category, $type, $rows, $image, $tag, $status, $file_title, $files, $featured){
        $unique_id = uniqid(Auth::user()->id.'_');
        // for thumbnail
        if($request->hasFile('image')){
            $post_thumbnail = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image','','');
        }
        else {
            $post_thumbnail = null;
        }
        $array_file_title = array_filter($file_title);

        // for  multiple files
        if($request->hasFile('files')){
            $post_files = parent::uploadMultipleFiles($request, $this->folder_path_file, $this->prefix_path_file, 'files');
        }
        else {
            $post_files = null;
        }
        if(isset($post_files) && isset($array_file_title)){
            $min = min(count($array_file_title), count($post_files));
            $array_file = array_map(null, array_slice($array_file_title, 0, $min), array_slice($post_files, 0, $min));
        }
        else {
            $array_file = null;
        }

        foreach($rows as $row) {
            $posts[] =[
                'user_id' => Auth::user()->id,
                'category_id' => $category,
                'lang_id' => $row['lang_id'],
                'unique_id' => $unique_id,
                'title' => $row['title'],
                'slug' => Str::slug($row['title']),
                'thumbnail' => $post_thumbnail,
                'content' => $row['description'],
                'excerpt' => $row['excerpt'],
                'status' => $status,
                'featured' => $featured,
                'tag' => $tag,
                'type' => $type,
                'created_at' => new DateTime(),
            ];

        }
        if(isset($array_file)){
            foreach($array_file as $file_row)
                File::create([
                    'unique_id' => $unique_id,
                    'title'=> $file_row[0],
                    'file' => $file_row[1],
                ]);
        }
        if(Post::insert($posts)){
            return true;
        }
        else {
            return false;
        }
    }

    public function updateData(Request $request, $category, $type, $rows, $image, $tag, $status, $file_title, $files, $unique_id, $featured){
        // for thumbnail
        if($request->hasFile('image')){
            $post_thumbnail = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image','','');
        }
        else {
            $post_thumbnail = Post::findOrFail($rows[0]['id'])->thumbnail;
        }
        $array_file_title = array_filter($file_title);

        // for  multiple files
        if($request->hasFile('files')){
            $post_files = parent::uploadMultipleFiles($request, $this->folder_path_file, $this->prefix_path_file, 'files');
        }
        else {
            $post_files = null;
        }
        if(isset($post_files) && isset($array_file_title)){
            $min = min(count($array_file_title), count($post_files));
            $array_file = array_map(null, array_slice($array_file_title, 0, $min), array_slice($post_files, 0, $min));
        }
        else {
            $array_file = null;
        }

        foreach($rows as $row) {
            if(isset($row['id'])){
                $post = Post::findOrFail($row['id']);
            }else{
                $post = new Post;
                $post->user_id = Auth::user()->id;
                $post->unique_id = $unique_id;
            }
            $post->category_id = $category;
            $post->lang_id = $row['lang_id'];
            $post->title = $row['title'];
            $post->slug = Str::slug($row['title']);
            $post->thumbnail = $post_thumbnail;
            $post->content = $row['description'];
            $post->excerpt = $row['excerpt'];
            $post->status = $status;
            $post->featured = $featured;
            $post->tag = $tag;
            $post->type = $type;
            $post->updated_at = date('Y-m-d');
            $post->save();
        }
        if(isset($array_file)){
            foreach($array_file as $file_row)
                File::create([
                    'unique_id' => $unique_id,
                    'title'=> $file_row[0],
                    'file' => $file_row[1],
                ]);
        }
        if($post->save()){
            return true;
        }
        else {
            return false;
        }
    }

    public function language() {
        return $this->belongsTo(Language::class, 'lang_id');
    }

    public function file() {
        return $this->hasMany(File::class, 'unique_id');
    }

    public function postCategory() {
        return $this->belongsTo(Category::class, 'category_id');
    }

      /** Page Tree */
      public function pageTree($lang_id) {
        $data['rows'] =  Post::where('deleted_at', '=', null)->where('featured', '=', 1)->where('status', '=', 1)->where('type', '=', 'page')->where('lang_id', '=', $lang_id)->orderBy('order')->get();
        $ref = [];
        $items = [];
        foreach($data['rows'] as $row){
            $thisRef = &$ref[$row->id];
            $thisRef['title'] = $row->title;
            $thisRef['unique_id'] = $row->unique_id;
            $thisRef['id'] = $row->id;
            $items[$row->id] = &$thisRef;
        }
        return $items;
    }

     /**
     * Build Category | Admin Panel
     */
    public static function buildPage($items, $class = 'dd-list') {
        $html = "<ol class=\"".$class."\" id=\"menu-id\">";
        foreach($items as $key=>$value) {
            $html.= '<li class="dd-item dd3-item" data-id="'.$value['id'].'">
                        <div class="dd-handle dd3-handle"></div>
                        <div class="dd3-content"><span id="label_show'.$value['id'].'">'.$value['title'].'</span>
                            <span class="span-right">
                                &nbsp;&nbsp;
                                <a class="btn btn-warning" id="'.$value['id'].'" label="'.$value['title'].'" href="\dashboard/page/'. $value['unique_id'].'/edit" ><i class="fa fa-pencil"></i></a>
                                <a class="btn btn-danger del-button" id="'.$value['unique_id'].'" ><i class="fa fa-trash-o"></i></a>
                            </span>
                        </div>';
            if(array_key_exists('child',$value)) {
                $html .= self::buildPage($value['child'],'child');
            }
                $html .= "</li>";
        }
        $html .= "</ol>";
        return $html;
    }

    // Getter for the HTML menu builder | Admin Panel
	public function getHTML($items)
	{
		return $this->buildPage($items);
	}
}

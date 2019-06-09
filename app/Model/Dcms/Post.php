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

    public function storeData(Request $request, $category, $type, $rows, $image, $tag, $status, $file_title, $files){
        $post_unique_id = uniqid(Auth::user()->id.'_');
        // for thumbnail 
        if($request->hasFile('image')){
            $post_thumbnail = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image','20','20');  
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
                'post_unique_id' => $post_unique_id,
                'title' => $row['title'],
                'slug' => Str::slug($row['title']),
                'thumbnail' => $post_thumbnail,
                'content' => $row['description'],
                'excerpt' => $row['excerpt'],
                'status' => $status,
                'tag' => $tag,
                'type' => $type,
                'created_at' => new DateTime(),
            ];

        }
        if(isset($array_file)){
            foreach($array_file as $file_row)
                File::create([
                    'post_unique_id' => $post_unique_id,
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

    public function updateData(Request $request, $category, $type, $rows, $image, $tag, $status, $file_title, $files, $post_unique_id){
        // for thumbnail 
        if($request->hasFile('image')){
            $post_thumbnail = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image','20','20');  
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
            if(isset($row['id'])){
                $post = Post::findOrFail($row['id']);
            }else{
                $post = new Post;
                $post->user_id = Auth::user()->id;
                $post->post_unique_id = $request->post_unique_id;
            }
            $post->category_id = $category;
            $post->lang_id = $row['lang_id'];
            $post->title = $row['title'];
            $post->slug = Str::slug($row['title']);
            $post->thumbnail = $post_thumbnail;
            $post->content = $row['description'];
            $post->excerpt = $row['excerpt'];
            $post->status = $status;
            $post->tag = $tag;
            $post->type = $type;
            $post->updated_at = new DateTime();
            $post->save();
        }
        if(isset($array_file)){
            foreach($array_file as $file_row)
                File::create([
                    'post_unique_id' => $post_unique_id,
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
        return $this->hasMany(File::class, 'post_unique_id');
    }

    public function postCategory() {
        return $this->belongsTo(Category::class, 'category_id');
    }
}

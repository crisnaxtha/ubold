<?php

namespace App\Http\Controllers\Site;
use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Eloquent\DM_Post;
use App\Model\Dcms\Menu;
use App\Model\Dcms\Contact;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Setting;
use App\Model\Dcms\Branch;
use App\Model\Dcms\Album;
use App\Model\Dcms\Post;
use App\Model\Dcms\Staff;
use App\Model\Dcms\Link;
use App\Model\Dcms\Category;
use App\Model\Dcms\Blog;
use DB;
use Session;

class SiteController extends DM_BaseController
{
    protected $panel;
    protected $base_route = 'site';
    protected $view_path = 'site';
    protected $model;
    protected $table;

    public function __construct(Request $request, DM_Post $dm_post, Tracker $tracker) {
        $this->dm_post = $dm_post;
        $this->lang_id = $dm_post::setLanguage();
        $this->tracker = $tracker::hit();
    }

    /** Home Page */
    public function index() {
        $this->panel = "Home";
        $this->view_path = 'site.';
        $this->tracker; //to track the user
        $data['menu'] = Menu::tree($this->lang_id);
        $data['imp_link'] = Link::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();
        $data['member'] = Staff::where('featured', '=', 1)->where('lang_id', '=', $this->lang_id)->orderBy('level')->get();

        $data['category'] = Category::take(4)->get();

        $i = 1;
        foreach($data['category'] as $row) {
            $data['cat_post_'.$i] = $this->dm_post::categoryPost($row->id, $this->lang_id, 6);
            $data['cat_'.$i] = $row->id;
            $i++;
        }
        $data['about_us'] = $this->dm_post::getSinglePage('1_5d3e5689aef01', $this->lang_id);
        $data['video'] = Blog::where('status', '=', 1)->get();

        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show contact Form
     */
    public function showContact() {
        $this->panel = "Contact";
        $this->view_path = 'site.';
        $this->tracker;// to track user
        $data['menu'] = Menu::tree($this->lang_id);
        return view(parent::loadView($this->view_path.'.contact'), compact('data'));
    }
    /** Store Message From Contact Us */
    public function storeMessage(Request $request) {
        $this->tracker;// to track user
        $request->validate([
            'name'     => 'required|max:255',
            'email'    => 'required',
            'message'  => 'required'
        ]);
        $row = new Contact;
        $row->name = $request->name;
        $row->email = $request->email;
        $row->number = $request->number;
        $row->message = $request->message;
        $row->save();
        session()->flash('alert-success', $this->panel. ' successfully send.');
        return redirect()->route('site.contact');
    }

    //to show post
    public function showPost($post_unique_id) {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['row'] = $this->dm_post::getSinglePost($post_unique_id, $this->lang_id);
        $data['file'] = $this->dm_post::getFile($post_unique_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.single'), compact('data'));
    }
    /** Show Single Page */
    public function showPage($post_unique_id){
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['row'] = $this->dm_post::getSinglePage($post_unique_id, $this->lang_id);
        $data['file'] = $this->dm_post::getFile($post_unique_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.single'), compact('data'));
    }

    //to show post category with post archive
    public function showCategoryPost($category_id) {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::categoryPost($category_id, $this->lang_id);
        $data['cat'] = $this->dm_post::getCategory($category_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }

    //download the file
    public function downloadFile($id) {
        $file = $this->dm_post::downloadFile($id);
        return $file;
    }
    /** Show All Post Collection */
    public function showAllPost() {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getAllPosts($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }


    public function showAllPage() {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getAllPages($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }


    public function showAllCategory() {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getCategories();
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }
    /**
     * shows album
     */
    public function showAlbum() {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['album'] = $this->dm_post::joinAlbum($this->lang_id);
        return  view(parent::loadView($this->view_path.'.album'), compact('data'));
    }
    /**
     * show photos
     */
    public function showPhotos($album_id) {
        $this->tracker;
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['album'] = Album::findOrFail($album_id);
        return  view(parent::loadView($this->view_path.'.gallery'), compact('data'));
    }

    public function showStaff() {
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['branch'] = Branch::where('status', '=', 1)->orderBy('order')->get();
        $lang_id = $this->lang_id;
        return view(parent::loadView($this->view_path.'.staff'), compact('data', 'lang_id'));
    }

    public function swapLanguage($lang_id) {
        Session::put('lang_id', $lang_id);
        return back();
    }

    public function search(Request $request) {
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $query = $request->get('keyword');
        $data['rows'] = Post::where('title', 'LIKE', '%'. $query.'%')
                        ->orWhere('content', 'LIKE', '%'. $query.'%')
                        ->orWhere('tag', 'LIKE', '%'. $query.'%')
                        ->orWhere('author', 'LIKE', '%'. $query.'%')->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }

}

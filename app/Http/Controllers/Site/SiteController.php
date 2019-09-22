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
use App\Model\Dcms\Service;
use App\Model\Dcms\Common;
use App\Model\Dcms\Popup;
use App\Model\Dcms\Process;
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
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['imp_link'] = Link::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();
        $data['member'] = Staff::where('featured', '=', 1)->where('lang_id', '=', $this->lang_id)->orderBy('feature_order')->get();

        $data['album'] = $this->dm_post::joinAlbum($this->lang_id);
        $data['category'] = $this->dm_post::getCategoryList($this->lang_id);
        $data['album_category'] = $this->dm_post::getAlbumCategoryList($this->lang_id);
        $data['count_cat'] = count($data['category']);

        foreach($data['category'] as $row) {
            $data['cat_post_'.$row->slug] = $this->dm_post::categoryPost($row->id, $this->lang_id, $data['count_cat']);
            $data['cat_'.$row->slug] = $row->id;
        }

        foreach($data['album_category'] as $row) {
            $data['cat_album_photo_'.$row->slug] = $this->dm_post::categoryAlbum($row->id, $this->lang_id, 3);
            $data['cat_album_'.$row->slug] = $row->id;
        }

        $data['about_us'] = $this->dm_post::getSinglePage('1_5d70d58478f88', $this->lang_id);
        $data['video'] = Blog::where('status', '=', 1)->get();
        $data['popup'] = Popup::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();

        $data['services'] = Service::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(8)->get();

        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show contact Form
     */
    public function showContact() {
        $this->panel = "Contact";
        $this->view_path = 'site.';
        $this->tracker;// to track user
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();

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
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['imp_link'] = Link::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();
        $data['category'] = $this->dm_post::getCategoryList($this->lang_id);
        $data['category_first'] = $this->dm_post::getCategoryFirst($this->lang_id);
        $data['category_first_post'] = $this->dm_post::categoryPost($data['category_first']->id, $this->lang_id, 20);
        $data['menu'] = Menu::tree($this->lang_id);
        $data['row'] = $this->dm_post::getSinglePost($post_unique_id, $this->lang_id);
        $data['file'] = $this->dm_post::getFile($post_unique_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.single'), compact('data'));
    }
    /** Show Single Page */
    public function showPage($unique_id){
        $this->tracker;
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['imp_link'] = Link::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();
        $data['category'] = $this->dm_post::getCategoryList($this->lang_id);
        $data['category_first'] = $this->dm_post::getCategoryFirst($this->lang_id);
        $data['category_first_post'] = $this->dm_post::categoryPost($data['category_first']->id, $this->lang_id, 20);
        $data['row'] = $this->dm_post::getSinglePage($unique_id, $this->lang_id);
        $data['file'] = $this->dm_post::getFile($unique_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.single'), compact('data'));
    }

    //to show post category with post archive
    public function showCategoryPost($category_id) {
        $this->tracker;
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
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
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getAllPosts($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }


    public function showAllPage() {
        $this->tracker;
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getAllPages($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }


    public function showAllCategory() {
        $this->tracker;
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
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
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
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
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['album'] = Album::findOrFail($album_id);
        return  view(parent::loadView($this->view_path.'.gallery'), compact('data'));
    }

    public function showStaff() {
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
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
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $query = $request->get('keyword');
        $data['rows'] = Post::where('title', 'LIKE', '%'. $query.'%')
                        ->orWhere('content', 'LIKE', '%'. $query.'%')
                        ->orWhere('tag', 'LIKE', '%'. $query.'%')
                        ->orWhere('author', 'LIKE', '%'. $query.'%')->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }

    /**
     * Showing of the process
     */
    public function showProcess(Request $request) {
        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['processes'] = Process::tree($this->lang_id);
        // dd($data);
        return view(parent::loadView($this->view_path.'.process'), compact('data'));
    }

}

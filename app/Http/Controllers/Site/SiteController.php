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
use App\Model\Dcms\Comment;
use App\Model\Dcms\FAQ;
use App\Model\Dcms\Banner;
use App\Model\Api\DistrictData;
use App\Model\Api\ProvinceData;
use App\Model\Api\DateData;
use App\Model\Dcms\Complain;
use DB;
use Session;
use Response;
use Illuminate\Support\Facades\Input;

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
        $data['member'] = $this->dm_post::featuredStaff($this->lang_id);

        $data['album'] = $this->dm_post::joinAlbum($this->lang_id);
        $data['category'] = $this->dm_post::getCategoryList($this->lang_id);
        $data['album_category'] = $this->dm_post::getAlbumCategoryList($this->lang_id, 4);
        $data['count_cat'] = count($data['category']);

        foreach($data['category'] as $row) {
            $data['cat_post_'.$row->slug] = $this->dm_post::categoryPost($row->id, $this->lang_id, $data['count_cat']);
            $data['cat_'.$row->slug] = $row->id;
        }

        foreach($data['album_category'] as $row) {
            $data['cat_album_photo_'.$row->slug] = $this->dm_post::categoryAlbum($row->id, $this->lang_id, 4);
            $data['cat_album_'.$row->slug] = $row->id;
        }

        $data['about_us'] = Post::where('type', '=', 'page')->where('status', '=', 1)->where('featured', '=', 1)->where('lang_id', '=', $this->lang_id)->first();
        $data['video'] = Blog::where('status', '=', 1)->get();
        $data['popup'] = Popup::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();

        $data['services'] = Service::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(8)->get();


        $data['district_api'] = DB::table('date_data')->where('flag', '=', 'one_year')->get();
        // dd($data['district_api']);
        $data['province_api'] = ProvinceData::all();
        $data['districtLabel'] = [];
        $data['districtData'] = [];

        $data['provinceLabel'] = [];
        $data['provinceData'] = [];

        foreach($data['district_api'] as $row) {
            array_push($data['districtLabel'], $row->title);
            array_push($data['districtData'], $row->data);
        }

        foreach($data['province_api'] as $row) {
            array_push($data['provinceLabel'], $row->title);
            array_push($data['provinceData'], $row->data);
        }

        $data['date_api'] = DB::table('date_data')->get();
        $data['date_data'] = $this->dm_post::arrayGroupBy($data['date_api'], 'flag');
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }

    public function getTimeBasedData(Request $request) {
        if($request->ajax()) {
            $district_api = DB::table('date_data')->where('flag', '=', $request->flag)->get();

            $data['districtLabel'] = [];
            $data['districtData'] = [];

            foreach($district_api as $row) {
                array_push($data['districtLabel'], $row->title);
                array_push($data['districtData'], $row->data);
            }
            // var_dump($data['districtLabel']);var_dump($data['districtData']);
            return $data;
        }
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
        $data['banner'] = DM_Post::getBannerImageBaseOnType('contact');
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
        $data['banner'] = DM_Post::getBannerImageBaseOnType('post');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['imp_link'] = Link::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();
        $data['category'] = $this->dm_post::getCategoryList($this->lang_id);
        $data['category_first'] = $this->dm_post::getCategoryFirst($this->lang_id);
        $data['category_first_post'] = $this->dm_post::categoryPost($data['category_first']->id, $this->lang_id, 20);
        $data['menu'] = Menu::tree($this->lang_id);
        $data['row'] = $this->dm_post::getSinglePost($post_unique_id, $this->lang_id);
        $data['file'] = $this->dm_post::getFile($post_unique_id);

        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        //Api Data
        $data['date_api'] = DB::table('date_data')->get();
        $data['date_data'] = $this->dm_post::arrayGroupBy($data['date_api'], 'flag');
        //Album
        $data['album'] = $this->dm_post::joinAlbumLimit($this->lang_id, 3);
        return view(parent::loadView($this->view_path.'.single'), compact('data'));
    }
    /** Show Single Page */
    public function showPage($unique_id){
        $this->tracker;
        $data['banner'] = DM_Post::getBannerImageBaseOnType('page');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['imp_link'] = Link::where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->get();
        $data['category'] = $this->dm_post::getCategoryList($this->lang_id);
        $data['category_first'] = $this->dm_post::getCategoryFirst($this->lang_id);
        $data['category_first_post'] = $this->dm_post::categoryPost($data['category_first']->id, $this->lang_id, 20);
        $data['row'] = $this->dm_post::getSinglePage($unique_id, $this->lang_id);
        $data['file'] = $this->dm_post::getFile($unique_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        //Api Data
        $data['date_api'] = DB::table('date_data')->get();
        $data['date_data'] = $this->dm_post::arrayGroupBy($data['date_api'], 'flag');
        //Album
        $data['album'] = $this->dm_post::joinAlbumLimit($this->lang_id, 3);
        return view(parent::loadView($this->view_path.'.single'), compact('data'));
    }

    //to show post category with post archive
    public function showCategoryPost($category_id) {
        $this->tracker;
        $data['banner'] = DM_Post::getBannerImageBaseOnType('category');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::categoryPost($category_id, $this->lang_id);
        $data['cat'] = $this->dm_post::getCategory($category_id);
        $data['category_first'] = $this->dm_post::getCategoryFirst($this->lang_id);
        $data['category_first_post'] = $this->dm_post::categoryPost($data['category_first']->id, $this->lang_id, 20);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['album'] = $this->dm_post::joinAlbumLimit($this->lang_id, 3);

        //Api Data
        $data['date_api'] = DB::table('date_data')->get();
        $data['date_data'] = $this->dm_post::arrayGroupBy($data['date_api'], 'flag');
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
        $data['banner'] = DM_Post::getBannerImageBaseOnType('post');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getAllPosts($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }


    public function showAllPage() {
        $this->tracker;
        $data['banner'] = DM_Post::getBannerImageBaseOnType('page');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getAllPages($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }


    public function showAllCategory() {
        $this->tracker;
        $data['banner'] = DM_Post::getBannerImageBaseOnType('category');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = $this->dm_post::getCategories();
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        //Api Data
        $data['date_api'] = DB::table('date_data')->get();
        $data['date_data'] = $this->dm_post::arrayGroupBy($data['date_api'], 'flag');
        return view(parent::loadView($this->view_path.'.category'), compact('data'));
    }
    /**
     * shows album
     */
    public function showAlbum() {
        $this->tracker;
        $data['banner'] = DM_Post::getBannerImageBaseOnType('album');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['album'] = $this->dm_post::joinAlbum($this->lang_id);
        $data['lang_id'] = $this->lang_id;
        return  view(parent::loadView($this->view_path.'.album'), compact('data'));
    }
    /**
     * show photos
     */
    public function showPhotos($album_id) {
        $this->tracker;
        $data['banner'] = DM_Post::getBannerImageBaseOnType('album');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['album'] = Album::findOrFail($album_id);
        return  view(parent::loadView($this->view_path.'.gallery'), compact('data'));
    }

    public function showStaff() {
        $data['banner'] = DM_Post::getBannerImageBaseOnType('member');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['branch'] = Branch::where('status', '=', 1)->orderBy('order')->get();

        $i = 1;
        foreach($data['branch'] as $row) {
            $staffs = $this->dm_post->branchStaff($this->lang_id, $row->id, 10);
            if(count($staffs) != 0 ){
                $data['staff'.$i] = $this->dm_post->branchStaff($this->lang_id, $row->id, 10);
            }else {
                $data['staff'.$i] = NULL;
            }
            $i++;
        }
        $lang_id = $this->lang_id;
        return view(parent::loadView($this->view_path.'.staff'), compact('data', 'lang_id'));
    }

    public function swapLanguage($lang_id) {
        Session::put('lang_id', $lang_id);
        return back();
    }

    public function search(Request $request) {
        $data['banner'] = DM_Post::getBannerImageBaseOnType('search');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['recent_post'] = DB::table('posts')->where('type', '=', 'post')->where('status', '=', 1)->where('lang_id', '=', $this->lang_id)->take(5)->get();
        $data['query'] = $request->get('keyword');
        // dd($data['query']);
        $data['rows'] = Post::where('title', 'LIKE', '%'. $data['query'].'%')
                        ->orWhere('content', 'LIKE', '%'. $data['query'].'%')
                        ->orWhere('tag', 'LIKE', '%'. $data['query'].'%')
                        ->orWhere('author', 'LIKE', '%'. $data['query'].'%')->paginate(9);
        return view(parent::loadView($this->view_path.'.search'), compact('data'));
    }

    /**
     * Showing of the process
     */
    public function showProcess(Request $request) {
        $data['banner'] = DM_Post::getBannerImageBaseOnType('process');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['processes'] = Process::tree($this->lang_id);
        // dd($data);
        return view(parent::loadView($this->view_path.'.process'), compact('data'));
    }

    public function postReaction(Request $request) {
        if($request->ajax()) {
            $id = Input::get( 'id' );
            $value = Input::get('value');
            $type = 'reaction';
            $reaction = new Comment;
            $reaction->unique_id = $id;
            $reaction->type = $type;
            $reaction->comment = $value;
            $reaction->save();
            return (Response::json($id));
        }
    }

    public function postComment(Request $request) {
        if($request->ajax()) {
          $comment = new Comment;
          $comment->comment = $request->comment;
          $comment->unique_id = $request->unique_id;
          $comment->type = "comment";
          $comment->save();
            return Response::json($comment);
        }
    }

    public function showAllFaq(Request $request) {
        $data['banner'] = DM_Post::getBannerImageBaseOnType('faq');

        $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
        $data['menu'] = Menu::tree($this->lang_id);
        $data['rows'] = FAQ::where('lang_id', '=', $this->lang_id)->where('status', '=', 1)->orderBy('order')->get();
        return view(parent::loadView($this->view_path.'.faq'), compact('data'));

    }

    public function showComplain(Request $request) {
        if($request->isMethod('post')) {
                $request->validate([
                    'name'     => 'required|max:255',
                    'email'    => 'required',
                    'message'  => 'required'
                ]);
                $row = new Complain;
                $row->name = $request->name;
                $row->email = $request->email;
                $row->phone = $request->phone;
                $row->address = $request->address;
                $row->comment = $request->message;
                $row->save();
                session()->flash('alert-success', $this->panel. ' successfully send.');
                return redirect()->route('site.complain');
        }
        else {
            $data['common'] = Common::where('lang_id', '=', $this->lang_id)->first();
            $data['menu'] = Menu::tree($this->lang_id);
            $data['complain'] = Complain::where('status', '=', 1)->paginate(5);
            return view(parent::loadView($this->view_path.'.complain'), compact('data'));
        }
    }

}

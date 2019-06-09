<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseControllerController;
use App\User;
use App\Model\Dcms\Post;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Language;
use App\Model\Dcms\Eloquent\DM_Post;
use DB;
use Session;
use App;

class HomeController extends DM_BaseController
{
    protected $panel = 'Home';
    protected $base_route ='';
    protected $view_path = 'dcms.';

    public function __construct(Request $request, User $user, Post $post, Tracker $tracker, DM_Post $dm_post){
        $this->user = $user;
        $this->post = $post;
        $this->dm_post = $dm_post;
        $this->lang_id = $dm_post::setLanguage();
        $this->tracker = $tracker::hit();
    }

    public function index(Request $request) {
        $this->tracker;
        $data['count_user'] = $this->user::count();
        $data['count_post'] = $this->post::where('type', '=', 'post')->where('lang_id', '=', $this->lang_id)->where('deleted_at', '=', null)->count();
        $data['count_page'] = $this->post::where('type', '=', 'page')->where('lang_id', '=', $this->lang_id)->where('deleted_at', '=', null)->count();

        for($i = -11; $i <= 0; $i++ ) {
            $j = $i+1;
            $day_date[] =  date('Y-m-d', strtotime("$i day"));
            $day_count[] = DB::table('trackers')->where('visit_date', '=', date('Y-m-d', strtotime("$i day")))->sum('hits');

            $month_date[] = date('Y-m-d', strtotime("$i month"));
            $month_count[] = DB::table('trackers')->whereBetween('visit_date', [date('Y-m-01', strtotime("$i month")), date('Y-m-t', strtotime("$i month"))])->sum('hits');
        }
        $data['last_twelve_day_data'] = array_map(null, $day_date, $day_count);
        $data['last_twelve_month_data'] = array_map(null, $month_date, $month_count);
        return view(parent::loadView($this->view_path.'.index'), compact('data')); 
    }

    public function swapLanguage($lang_id) {
        Session::put('lang_id', $lang_id);
        return back();   
    }

    public static function langName() {
        $row = Language::findOrFail(Session::get('lang_id'));
        return $row->name;
    }
}

<?php

namespace App\Model\Dcms\Eloquent;
use DB;
use Illuminate\Database\Eloquent\Model;
use App\Model\Dcms\Setting;
use App\Model\Dcms\Language;
use App\Model\Dcms\Post;
use App\Model\Dcms\File;
use App\Model\Dcms\Menu;
use App\Model\Dcms\Category;
use App\Model\Dcms\AlbumCategory;
use App\Model\Dcms\Album;
use Session;
use App;
use App\Model\Dcms\Banner;
use App\Model\Dcms\Staff;
use Auth;
use Monolog\Handler\NullHandler;

class DM_Post extends Model{
    /**
     * get all the multiple language names
     */
    public static function getLanguage() {
        return Language::where('status', '=', 1)->where('deleted_at', '=', null)->get();
    }

    /**
     * to get all the post file using joint post with file
     */
    public static function joinPostFile($unique_id) {
        return DB::table('posts')
                ->join('files', 'posts.unique_id', '=', 'files.unique_id')
                ->where('posts.deleted_at', '=', null)
                ->where('posts.unique_id', '=', $unique_id)
                ->select('posts.*', 'files.title as file_tile', 'files.file')
                ->get();
    }

    /**
    *to get all the post file using joint post with file
     *
     */
    public static function joinSliderName($lang_id) {
        return DB::table('sliders')
                ->join('sliders_name', 'sliders.id', '=', 'sliders_name.slider_id')
                ->where('sliders_name.lang_id', '=', $lang_id)
                ->select('sliders.*', 'sliders_name.lang_id', 'sliders_name.name as slider_name')
                ->get();
    }

    /**
    *to get all the album file using joint post with file
     *
     */
    public static function joinAlbumCategoryName($lang_id, $id) {
        return DB::table('album_categories')
                ->join('album_categories_name', 'album_categories.id', '=', 'album_categories_name.album_category_id')
                ->where('album_categories_name.lang_id', '=', $lang_id)
                ->where('album_categories.id', '=', $id)
                ->select('album_categories.*', 'album_categories_name.lang_id', 'album_categories_name.name as album_cat_name')
                ->first();
    }

    /**
     *
     * get the post's id  using unique_id
     *  */
    public static function getPostId($unique_id) {
        return Post::where('unique_id', $unique_id)
                ->select('id')->get();
    }

    //get categories
    public static function getCategories() {
        return Category::get();
    }

    //get all the post of same language
    public static function getAllPosts($lang_id) {
        return Post::where('deleted_at', '=', null)->where('status', '=', 1)->where('type', '=', 'post')->where('lang_id','=', $lang_id)->get();
    }

    //get all the pages of the same langnuage
    public static function getAllPages($lang_id) {
        return Post::where('deleted_at', '=', null)->where('status', '=', 1)->where('type', '=','page')->where('lang_id', '=', $lang_id)->get();
    }

    // get single page of particular language
    public static function getSinglePage($unique_id, $lang_id) {
        $post =  Post::where('deleted_at', '=', null)->where('status', '=', 1)->where('type', '=', 'page')->where('unique_id', '=', $unique_id)->where('lang_id', '=', $lang_id)->first();
        if(isset($post)){
        $post->increment('visit_no');
        }
        return $post;
    }

    // get the single post of particular language
    public static function getSinglePost($unique_id, $lang_id) {
        $post = Post::where('deleted_at', '=', null)->where('type', '=', 'post')->where('unique_id', '=', $unique_id)->where('lang_id', '=', $lang_id)->first();
        if(isset($post)){
            $post->increment('visit_no');
        }
        return $post;

    }
    // get the file
    public static function getFile($unique_id) {
        return File::where('unique_id', '=', $unique_id)->get();
    }

    /**
     * download file
     */
    public static function downloadFile($id) {
        $file = File::where('id', '=', $id)->first();
        if(isset($file)){
        $file->increment('download_count');
        }
        $file_path = getcwd().'/'.$file->file;
        return response()->download($file_path);
    }
    //get the single category
    public static function getCategory($category_id) {
        return Category::where('id', '=', $category_id)->first();

    }

    //get category base post
    public static function categoryPost($category_id, $lang_id, $number = '5') {
        return Post::where('deleted_at', '=', null)->where('type', '=', 'post')->where('category_id', '=', $category_id)->where('lang_id', '=', $lang_id)->take($number)->get();
    }

    public static function joinMenu($lang_id) {
        return DB::table('menus')
                ->join('menus_name', 'menus.id', '=', 'menus_name.menu_id')
                ->where('menus_name.lang_id', '=', $lang_id)
                ->select('menus.*', 'menus_name.lang_id', 'menus_name.name as menu_name')->orderBy('order')
                ->get();
    }

    public static function getMenuDisplay($lang_id) {
        return self::joinMenu($lang_id);
    }

    //get all the menu with public status
    public static function getMenu() {
        return Menu::where('status', '=', 1)->get();
    }


    /**
     * Join Album
     */
    public static function joinAlbum($lang_id) {
        $album = DB::table('albums')
                    ->join('albums_name', 'albums.id', '=', 'albums_name.album_id')
                    ->select('albums.*', 'albums_name.title', 'albums_name.lang_id', 'albums_name.description')
                    ->where('albums_name.lang_id', '=', $lang_id)
                    ->where('albums.status', '=', 1)
                    ->get();
        return $album;
    }

    /** Join Album with limited number  */
    public static function joinAlbumLimit($lang_id, $number = 3) {
        $album = DB::table('albums')
                    ->join('albums_name', 'albums.id', '=', 'albums_name.album_id')
                    ->select('albums.*', 'albums_name.title', 'albums_name.lang_id', 'albums_name.description')
                    ->where('albums_name.lang_id', '=', $lang_id)
                    ->where('albums.status', '=', 1)
                    ->take($number)->get();
        return $album;
    }

    /** used for the session language id | used all over */
    public static function setLanguage() {
        if(!Session::has('lang_id')) {
            $default_lang_id = Setting::pluck('language')->first();
            if(!isset($default_lang_id)){
                $default_lang_id = $this->app->config->get('app.fallback_locale');
            }
            Session::put('lang_id', $default_lang_id);
            $lang_id = Session::get('lang_id');
        }else {
            $lang_id = Session::get('lang_id');
        }
        //to set the locale for language file
        App::setLocale(DM_Post::getLangCode($lang_id));
        return $lang_id;
    }

    /** return the language code */
    public static function getLangCode() {
        $row = Language::findOrFail(Session::get('lang_id'));
        return $row->code;
    }
    /** return user id if authenticated  */
    public static function userId() {
        if (Auth::check()) {
           return Auth::user()->id;
        }
        return null;
    }

    public static function getCategoryFirst($lang_id) {
        $album =  DB::table('categories')
        ->join('categories_name', 'categories.id', '=', 'categories_name.category_id')
        ->select('categories.*', 'categories_name.name as cat_name', 'categories_name.lang_id')
        ->where('categories_name.lang_id', '=', $lang_id)
        ->where('categories.featured', '=', 1)->orderBy('order')
        ->first();
        return $album;
    }

    public static function getCategoryList($lang_id) {
        $album =  DB::table('categories')
            ->join('categories_name', 'categories.id', '=', 'categories_name.category_id')
            ->select('categories.*', 'categories_name.name as cat_name', 'categories_name.lang_id')
            ->where('categories_name.lang_id', '=', $lang_id)
            ->where('categories.featured', '=', 1)->orderBy('order')
            ->get();
            return $album;
    }

    public static function getAlbumCategoryList($lang_id, $number = 4) {
        $album =  DB::table('album_categories')
            ->join('album_categories_name', 'album_categories.id', '=', 'album_categories_name.album_category_id')
            ->select('album_categories.*', 'album_categories_name.name as cat_name', 'album_categories_name.lang_id')
            ->where('album_categories_name.lang_id', '=', $lang_id)
            ->where('album_categories.featured', '=', 1)->orderBy('order')
            ->take($number)->get();
            return $album;
    }

    public static function getAlbumCategories(){
        return AlbumCategory::get();
    }

    public static function categoryAlbum($category_id, $lang_id, $number = '5') {
        $album =  DB::table('albums')
        ->join('albums_name', 'albums.id', '=', 'albums_name.album_id')
        ->select('albums.*', 'albums_name.title as album_name', 'albums_name.lang_id')
        ->where('albums_name.lang_id', '=', $lang_id)
        ->where('albums.status', '=', 1)->orderBy('order')
        ->where('albums.album_category_id', '=', $category_id)
        ->take($number)->get();
        return $album;
    }

    public static function getContentName($unique_id) {
        return Post::where('deleted_at', '=', Null)->where('unique_id', '=', $unique_id)->pluck('title')->first();
    }

    public static function getLanguageName($id) {
        return Language::where('id', '=', $id)->pluck('name')->first();
    }

    public static function arrayGroupBy($old_arr_1, $based_on) {
        $arr = array();
        $old_arr = json_decode($old_arr_1, true);
        foreach($old_arr as $key => $item)
        {
            if(array_key_exists($based_on, $item))
                $arr[$item[$based_on]][$key] = $item;
        }
        ksort($arr, SORT_NUMERIC);
        return $arr;
    }

    //Send the staff based on
    public function branchStaff($lang_id, $branch_id, $number) {
        $data =  Staff::where('branch_id', '=', $branch_id)->where('lang_id', '=', $lang_id)->where('status', '=', 1)->paginate($number);
        $staff = $data->toArray();
        return Self::arrayGroupBy(json_encode($staff['data']), 'level');
    }

    // Send the featured staff based on level
    public static function featuredStaff($lang_id) {
        $data =  Staff::where('lang_id', '=', $lang_id)->where('status', '=', 1)->where('featured', '=', 1)->orderBy('featured_order')->get();
        $staff = $data->toArray();
        return Self::arrayGroupBy(json_encode($staff), 'level');
    }
    public static function getBannerImageBaseOnType($type) {
        $data = Banner::where('type', '=', $type)->first();
        return $data;
    }
}

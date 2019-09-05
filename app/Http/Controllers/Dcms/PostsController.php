<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Post;
use App\Model\Dcms\File;
use App\Model\Dcms\Eloquent\DM_Post;
use DB;
use Illuminate\Support\Str;
use Auth;
use DateTime;
use App\Model\Dcms\Tracker;

class PostsController extends DM_BaseController
{

    protected $panel;
    protected $base_route;
    protected $view_path;
    protected $model;
    protected $table;


    public function __construct(Request $request, Post $post, File $file, DM_Post $dm_post, Tracker $tracker) {
        $this->model = $post;
        $this->file_model = $file;
        $this->table = DB::table('posts');
        $this->dm_post = $dm_post;
        $this->lang_id = $dm_post::setLanguage();
        $this->tracker = $tracker::hit();
    }
    /** ===================================PAGE================================================== */
    public function indexPage() {
        $this->tracker;
        $this->panel = 'Pages';
        $this->base_route = 'dcms.page';
        $this->view_path = 'dcms.page';
        $data['rows'] = $this->model::where('type', '=', 'page')->where('deleted_at', '=', null)->where('lang_id', '=', $this->lang_id)->get();
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }
    public function createPage() {
        $this->tracker;
        $this->panel = 'Pages';
        $this->base_route = 'dcms.page';
        $this->view_path = 'dcms.page';
        $data['lang']= $this->dm_post::getLanguage();
        return view(parent::loadView($this->view_path.'.create'), compact('data'));
    }
    public function storePage(Request $request) {
        $request->validate([
            'rows.*.title' => 'required|max:225',
            'rows.*.description' => 'required',
            'image' => 'image',
            'file_title' => 'array|max:225',
            // 'files' => 'array|mimes:pdf,docx,xlsx',
            'tag' => 'nullable|max:255',
            'status' => 'required|boolean'
        ], [
            'rows.*.title.required' => 'The Page title is required (Language)',
            'rows.*.description.required' => 'The Page description is required (Language)'
        ]);
        $this->tracker;
        $this->panel = 'Pages';
        $this->base_route = 'dcms.page';
        $this->view_path = 'dcms.page';
        if($this->model->storeData($request, $request->category, $request->type, $request->rows, $request->image, $request->tag, $request->status, $request->file_title, $request->file)){
            session()->flash('alert-success', $this->panel.' Successfully Added');
        }
        else {
            session()->flash('alert-danger', $this->panel.' can not be added');
        }
        return redirect()->route($this->base_route.'.index');
    }
    public function editPage(Request $request, $unique_id) {
        $this->tracker;
        $this->panel = 'Pages';
        $this->base_route = 'dcms.page';
        $this->view_path = 'dcms.page';
        $post = $this->model::where('unique_id', '=', $unique_id)->get();
        $data['file'] = $this->file_model::where('unique_id', '=', $unique_id)->get();
        $data['single'] = $this->model::where('unique_id', '=', $unique_id)->first();
        $data['lang'] = $this->dm_post::getLanguage();
        return view(parent::loadView($this->view_path.'.edit'), compact('data', 'post'));
    }
    public function updatePage(Request $request, $unique_id) {
        $request->validate([
            'rows.*.title' => 'required|max:225',
            'rows.*.description' => 'required',
            'image' => 'image',
            'file_title' => 'array|max:225',
            // 'files' => 'array|mimes:pdf,docx,xlsx',
            'tag' => 'nullable|max:255',
            'status' => 'required|boolean'
        ], [
            'rows.*.title.required' => 'The Page title is required (Language)',
            'rows.*.description.required' => 'The Page description is required (Language)'
        ]);
        $this->tracker;
        $this->panel = 'Pages';
        $this->base_route = 'dcms.page';
        $this->view_path = 'dcms.page';
        if($this->model->updateData($request, $request->category, $request->type, $request->rows, $request->image, $request->tag, $request->status, $request->file_title, $request->file, $unique_id)){
            session()->flash('alert-success', $this->panel.' Successfully updated');
        }
        else {
            session()->flash('alert-danger', $this->panel.' can not be updated');
        }
        return redirect()->route($this->base_route.'.index');
    }
    public function destroy($unique_id) {
        $this->tracker;
        $data = $this->model::where('unique_id', '=', $unique_id)->get();
        foreach( $data as $row) {
            $row->deleted_at = new DateTime();
            $row->save();
        }
    }
    public function destroyFile($id) {
        $this->tracker;
        $row = $this->file_model::findOrFail($id);
        $file_path = getcwd(). $row->file;
        if(is_file($file_path)){
            unlink($file_path);
        }
        $data = $this->file_model::destroy($id);
    }

    public function deletedPage() {
        $this->tracker;
        $this->panel = 'Pages';
        $this->base_route = 'dcms.page';
        $this->view_path = 'dcms.page';
        $data['rows'] = Post::where('deleted_at', '!=', null)->where('type', '=', 'page')->where('lang_id', '=', $this->lang_id)->get();
        return view(parent::loadView($this->view_path.'.deleted'), compact('data'));

    }

    /** ================================POST==================================================== */
    /**
     * Post index
     */
    public function indexPost() {
        $this->panel = 'Posts';
        $this->base_route = 'dcms.post';
        $this->view_path = 'dcms.post';
        $data['rows'] = $this->model::where('type', '=', 'post')->where('deleted_at', '=', null)->where('lang_id', '=', $this->lang_id)->get();
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }
    public function createPost() {
        $this->tracker;
        $this->panel = 'Posts';
        $this->base_route = 'dcms.post';
        $this->view_path = 'dcms.post';
        $data['lang']= $this->dm_post::getLanguage();
        $data['categories'] = $this->dm_post::getCategories();
        return view(parent::loadView($this->view_path.'.create'), compact('data'));
    }
    public function storePost(Request $request) {
        $request->validate([
            'rows.*.title' => 'required|max:225',
            'rows.*.description' => 'required',
            'image' => 'image',
            'file_title' => 'array|max:225',
            // 'files' => 'array|mimes:pdf,docx,xlsx',
            'tag' => 'nullable|max:255',
            'status' => 'required|boolean' ,
            'category' => 'required'
        ], [
            'rows.*.title.required' => 'The Post title is required (Language)',
            'rows.*.description.required' => 'The Post description is required (Language)'
        ]);
        $this->tracker;
        $this->panel = 'Posts';
        $this->base_route = 'dcms.post';
        $this->view_path = 'dcms.post';
        if($this->model->storeData($request, $request->category, $request->type, $request->rows, $request->image, $request->tag, $request->status, $request->file_title, $request->file)){
            session()->flash('alert-success', $this->panel.' Successfully Added');
        }
        else {
            session()->flash('alert-danger', $this->panel.' can not be added');
        }
        return redirect()->route($this->base_route.'.index');
    }
    public function editPost(Request $request, $unique_id) {
        $this->tracker;
        $this->panel = 'Posts';
        $this->base_route = 'dcms.post';
        $this->view_path = 'dcms.post';
        $post = $this->model::where('unique_id', '=', $unique_id)->get();
        $data['file'] = $this->file_model::where('unique_id', '=', $unique_id)->get();
        $data['single'] = $this->model::where('unique_id', '=', $unique_id)->first();
        $data['lang'] = $this->dm_post::getLanguage();
        $data['categories'] = $this->dm_post::getCategories();
        return view(parent::loadView($this->view_path.'.edit'), compact('data', 'post'));
    }
    public function updatePost(Request $request, $unique_id) {
        $request->validate([
            'rows.*.title' => 'required|max:225',
            'rows.*.description' => 'required',
            'image' => 'image',
            'file_title' => 'array|max:225',
            // 'files' => 'array|mimes:pdf,docx,xlsx',
            'tag' => 'nullable|max:255',
            'status' => 'required|boolean' ,
            'category' => 'required'
        ], [
            'rows.*.title.required' => 'The Posts title is required (Language)',
            'rows.*.description.required' => 'The Posts description is required (Language)'
        ]);
        $this->tracker;
        $this->panel = 'Posts';
        $this->base_route = 'dcms.post';
        $this->view_path = 'dcms.post';
        if($this->model->updateData($request, $request->category, $request->type, $request->rows, $request->image, $request->tag, $request->status, $request->file_title, $request->file, $unique_id)){
            session()->flash('alert-success', $this->panel.' Successfully updated');
        }
        else {
            session()->flash('alert-danger', $this->panel.' can not be updated');
        }
        return redirect()->route($this->base_route.'.index');
    }

    public function deletedPost() {
        $this->tracker;
        $this->panel = 'Posts';
        $this->base_route = 'dcms.post';
        $this->view_path = 'dcms.post';
        $data['rows'] = Post::where('deleted_at', '!=', null)->where('type', '=', 'post')->where('lang_id', '=', $this->lang_id)->get();
        return view(parent::loadView($this->view_path.'.deleted'), compact('data'));

    }


    public function restore($unique_id) {
        $this->tracker;
        $data = $this->model::where('unique_id', '=', $unique_id)->get();
        foreach( $data as $row) {
            $row->deleted_at = null;
            $row->save();
        }
    }

    public function permanentDelete($unique_id) {
        $this->tracker;
        $data = $this->model::where('unique_id', '=', $unique_id)->get();
        foreach( $data as $row) {
            $this->model::where('unique_id', '=', $unique_id)->delete();
        }
    }



}

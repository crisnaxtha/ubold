<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Comment;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Eloquent\DM_Post;
use App\DM_Libraries\Spyc;
use DB;

class CommentsController extends DM_BaseController
{
    protected $panel = 'Comment';
    protected $base_route = 'dcms.comment';
    protected $view_path = 'dcms.comment';
    protected $model;
    protected $table;

    public function __construct(Comment $model, Tracker $tracker, DM_Post $dm_post) {
        $this->middleware('auth');
        // $this->middleware('permission:category-list', ['only' => ['index']]);
        // $this->middleware('permission:category-create', ['only' => ['create','store']]);
        // $this->middleware('permission:category-edit', ['only' => ['edit','update']]);
        // $this->middleware('permission:category-delete', ['only' => ['destroy']]);
        // $this->middleware('permission:category-sort-order', ['only' => ['storeOrder']]);
        $this->model = $model;
        $this->tracker = $tracker::hit();
        $this->lang_id = $dm_post::setLanguage();
        $this->dm_post = $dm_post;

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexReaction()
    {
        //
    }

    public function indexComment() {
        $this->tracker;
        $data['rows'] = $this->model::all();
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->model::destroy($id);
    }
}

<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Eloquent\DM_Post;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Blog;


class BlogsController extends DM_BaseController
{
    protected $panel = 'Blogs';
    protected $base_route = 'dcms.blog';
    protected $view_path = 'dcms.blog';
    protected $model;
    protected $table;

    protected $folder = 'blog';
    protected $folder_path;
    protected $image_prefix_path = 'upload_file/images/blog/';

    public function __construct(Blog $blog,Tracker $tracker) {
        $this->model = $blog;
        $this->tracker = $tracker::hit();
        $this->folder_path = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR .'images'. DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->tracker;
        $data['rows'] = $this->model::all();
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->tracker;
        return view(parent::loadView($this->view_path.'.create'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->tracker;
        $request->validate([

            'status'        => 'required',

        ]);

        $row = $this->model;

        $row->title = $request->name;
        if($request->hasFile('thumbnail')){
            $row->thumbnail = parent::uploadFile($this->folder_path, $this->image_prefix_path, 'thumbnail', $request);
        }
        $row->description = $request->description;
        $row->link = $request->link;
        $row->status = $request->status;
        $row->featured = $request->featured;
        $row->save();
        session()->flash('alert-success', $this->panel. ' successfully added.');
        return redirect()->route($this->base_route.'.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->tracker;
        $row = $this->model::findOrFail($id);
        return view(parent::loadView($this->view_path.'.edit'), compact('row'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->tracker;
        $request->validate([

            'status'        => 'required',

        ]);

        $row = $this->model::findOrFail($id);
        $row->title = $request->name;
        if($request->hasFile('thumbnail')){
            $row->thumbnail = parent::uploadFile($this->folder_path, $this->image_prefix_path, 'thumbnail', $request);
        }
        $row->description = $request->description;
        $row->link = $request->link;
        $row->status = $request->status;
        $row->featured = $request->featured;
        $row->save();
        session()->flash('alert-success', $this->panel. ' successfully added.');
        return redirect()->route($this->base_route.'.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->tracker;
        $row = $this->model::findOrFail($id);
        $file_path_1 = getcwd(). $row->thumbnail;
        if(is_file($file_path_1)){
            unlink($file_path_1);
        }
        $this->model::destroy($id);
    }
}

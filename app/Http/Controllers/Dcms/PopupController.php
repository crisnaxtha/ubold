<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Popup;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Eloquent\DM_Post;

class PopupController extends DM_BaseController
{
    protected $panel = 'Popup';
    protected $base_route = 'dcms.popup';
    protected $view_path ='dcms.popup';
    protected $model;
    protected $table;

    public function __construct(Request $request, Tracker $tracker, Popup $popup, DM_Post $dm_post) {
        $this->middleware('auth');
        $this->model = $popup;
        $this->tracker = $tracker::hit();
        $this->dm_post = $dm_post;
        $this->lang_id = $dm_post::setLanguage();

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->tracker;
        $data['rows'] = $this->model::where('lang_id', '=', $this->lang_id)->get();
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['lang'] = $this->dm_post::getLanguage();
        return view(parent::loadView($this->view_path.'.create'), compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($this->model->storeData($request, $request->image, $request->rows, $request->link, $request->order, $request->status ) ){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
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
    public function edit($unique_id)
    {
        $links = $this->model::where('unique_id', '=', $unique_id)->get();
        $data['lang'] = $this->dm_post::getLanguage();
        $data['single'] = $this->model::where('unique_id', '=', $unique_id)->first();
        return view(parent::loadView($this->view_path.'.edit'), compact('data', 'links'));
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
        if($this->model->updateData($request, $request->unique_id, $request->image, $request->rows, $request->link, $request->order, $request->status ) ){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
        return redirect()->route($this->base_route.'.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($unique_id)
    {
        $this->tracker;
        $data = $this->model::where('unique_id', '=', $unique_id)->get();
        foreach( $data as $row) {
            $row->delete();
        }
    }
}

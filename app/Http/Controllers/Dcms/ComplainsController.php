<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Complain;
use App\Model\Dcms\Contact;
use App\Model\Dcms\Eloquent\DM_Post;

class ComplainsController extends DM_BaseController
{
    protected $panel = 'Complain';
    protected $base_route = 'dcms.complain';
    protected $view_path = 'dcms.complain';
    protected $model;

    public function __construct(Complain $model, DM_Post $dm_post) {
        // $this->middleware('permission:contact-list', ['only' => ['index']]);
        // $this->middleware('permission:contact-create', ['only' => ['create','store']]);
        // $this->middleware('permission:contact-edit', ['only' => ['edit','update']]);
        // $this->middleware('permission:contact-delete', ['only' => ['destroy']]);
        // $this->middleware('permission:contact-sort-order', ['only' => ['storeOrder']]);
        $this->model = new $model;
        $this->lang_id = $dm_post::setLanguage();

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['rows'] = $this->model::all();
        // dd($data['rows']);
        return view(parent::loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $row = $this->model::findOrFail($id);
        return view(parent::loadView($this->view_path.'.show'), compact('row'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
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
        $row = $this->model::findOrFail($id);
        $row->reply = $request->reply;
        $row->status = $request->status;
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
        $this->model::destroy($id);
    }
}

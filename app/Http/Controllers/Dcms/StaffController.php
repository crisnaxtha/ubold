<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Staff;
use App\Model\Dcms\Branch;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Eloquent\DM_Post;

class StaffController extends DM_BaseController
{
    protected $panel = 'Staff';
    protected $base_route = 'dcms.staff';
    protected $view_path = 'dcms.staff';
    protected $model;
    protected $table;
    
    public function __construct(Request $request, Staff $staff, Branch $branch, Tracker $tracker,DM_Post $dm_post) {
        $this->middleware('auth');
        $this->model = $staff;
        $this->tracker = $tracker::hit();
        $this->dm_post = $dm_post;
        $this->branch = $branch;
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
        $data['branch'] = $this->branch::where('status', '=', 1)->get();
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
        $request->validate([
            'rows.*.name' => 'required|max:225',
            'image' => 'image',
            'status' => 'required|boolean' ,
            'level' => 'required|numeric',
            'branch_id'=> 'required|numeric',
        ], [
            'rows.*.name.required' => 'The Staff Name is required (Language)',
            'branch_id.required' => 'Select Branch',
        ]);
        if($this->model->storeData($request, $request->rows, $request->image, $request->branch_id, $request->status, $request->level ) ){
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
    public function edit($staff_unique_id)
    {
        $staff = $this->model::where('staff_unique_id', '=', $staff_unique_id)->get();
        $data['lang'] = $this->dm_post::getLanguage();
        $data['branch'] = $this->branch::where('status', '=', 1)->get();
        $data['single'] = $this->model::where('staff_unique_id', '=', $staff_unique_id)->first();
        return view(parent::loadView($this->view_path.'.edit'), compact('data', 'staff')); 
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
        $request->validate([
            'rows.*.name' => 'required|max:225',
            'image' => 'image',
            'status' => 'required|boolean' ,
            'level' => 'required|numeric',
            'branch_id'=> 'required|numeric',
        ], [
            'rows.*.name.required' => 'The Staff Name is required (Language)',
            'branch_id.required' => 'Select Branch',
        ]);
        if($this->model->updateData($request, $request->rows, $request->image, $request->branch_id, $request->status, $request->level ) ){
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
    public function destroy($staff_unique_id)
    {
        $this->tracker;
        $data = $this->model::where('staff_unique_id', '=', $staff_unique_id)->get();
        foreach( $data as $row) {
            $row->delete();
        }
    }
}

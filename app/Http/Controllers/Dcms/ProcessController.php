<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Process;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Eloquent\DM_Post;
use Response;
use DB;

class ProcessController extends DM_BaseController
{
    protected $panel = 'Process';
    protected $base_route = 'dcms.process';
    protected $view_path ='dcms.process';
    protected $model;
    protected $table;

    public function __construct(Request $request, Tracker $tracker, Process $model, DM_Post $dm_post) {
        $this->middleware('auth');
        $this->model = $model;
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
        $data['lang'] = $this->dm_post::getLanguage();
        $items = $this->model->processTree();
        $process = $this->model->getHtml($items);
        // $data['rows'] = $this->model::where('lang_id', '=', $this->lang_id)->get();
        return view(parent::loadView($this->view_path.'.index'), compact('data', 'process'));
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
        if($this->model->storeData($request->name, $request->rows, $request->link, $request->status) ){
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
    public function edit($id)
    {
        $data['process'] = $this->model::findOrFail($id);
        $data['lang'] = $this->dm_post::getLanguage();
        $process_name = DB::table('process_name')->where('process_id', '=', $id)->get();
        return view(parent::loadView($this->view_path.'.edit'), compact('data', 'process_name'));
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
        if($this->model->updateData($id, $request->name, $request->rows, $request->link, $request->status) ){
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
    public function destroy($id)
    {
        $this->tracker;
        $this->model->destroy($id);
    }

     /** Store the order from ajax */
     public function storeOrder(Request $request){
        if($request->ajax()) {
            $data = json_decode($_POST['data']);
            $readbleArray = parent::parseJsonArray($data);
            $i = 0;
            foreach( $readbleArray as $row) {
                $i++;
                $category = Process::findOrFail($row['id']);
                $category->parent_id = $row['parentID'];
                $category->order = $i;
               $category->save();
            }
            // return var_dump(Response::json($category));
        }
    }
}

<?php

namespace App\Http\Controllers\Dcms;

use Illuminate\Http\Request;
use App\Http\Controllers\Dcms\DM_BaseController;
use App\Model\Dcms\Category;
use App\Model\Dcms\Tracker;
use App\Model\Dcms\Eloquent\DM_Post;
use Illuminate\Support\Str;
use App\DM_Libraries\Spyc;

use Response;

class CategoriesController extends DM_BaseController
{
    protected $panel = 'Album Category';
    protected $base_route = 'dcms.album_category';
    protected $view_path = 'dcms.album_category';
    protected $model;
    protected $table;

    public function __construct(Category $category, Tracker $tracker, DM_Post $dm_post) {
        $this->middleware('auth');
        $this->middleware('role:admin')->only('destroy');
        $this->model = $category;
        $this->tracker = $tracker::hit();
        $this->lang_id = $dm_post::setLanguage();
        $this->dm_post = $dm_post;

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->tracker;
        $spyc = new Spyc();
        $icons = $spyc::YAMLLoad(app_path()."/DM_Treasure/icons.yml");
        $data['fa-icons'] = $icons["fa"];
        $data['lang'] = $this->dm_post::getLanguage();

        $items = $this->model->categoryTree();
        $category = $this->model->getHtml($items);
        return view(parent::loadView($this->view_path.'.index'), compact('category', 'data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // return view(parent::loadView($this->view_path.'.create'));
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
            'rows.*.name' => 'required|max:225',
            'featured' => 'required|boolean'
        ], [
            'rows.*.name.required' => 'You have to enter the name of Category.',
        ]);

        if($this->model->storeData($request->icon, $request->color, $request->rows, $request->featured)){
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
    public function edit($category_unique_id)
    {
        $this->tracker;
        $spyc = new Spyc();
        $icons = $spyc::YAMLLoad(app_path()."/DM_Treasure/icons.yml");
        $data['fa-icons'] = $icons["fa"];
        $category = $this->model::where('category_unique_id', '=', $category_unique_id)->get();
        $data['lang'] = $this->dm_post::getLanguage();
        $data['single'] = $this->model::where('category_unique_id', '=', $category_unique_id)->first();
        return view(parent::loadView($this->view_path.'.edit'), compact('data', 'category'));
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
            'featured' => 'required|boolean',
        ], [
            'rows.*.name.required' => 'You have to enter the name of Category.',
        ]);
        if($this->model->updateData($request->category_unique_id, $request->icon, $request->color, $request->rows, $request->featured ) ){
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
    public function destroy($category_unique_id)
    {
        $this->tracker;
        $data = $this->model::where('category_unique_id', '=', $category_unique_id)->get();
        foreach( $data as $row) {
            $row->delete();
        }
    }

    /** Store the order from ajax */
     public function storeOrder(Request $request){
        if($request->ajax()) {
            $data = json_decode($_POST['data']);
            $readbleArray = parent::parseJsonArray($data);
            $i = 0;
            foreach( $readbleArray as $row) {
                $i++;
                $category = Category::findOrFail($row['id']);
                $category->parent_id = $row['parentID'];
                $category->order = $i;
               $category->save();
            }
            // return var_dump(Response::json($category));
        }
    }

}

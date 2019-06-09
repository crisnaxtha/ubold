<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use DB;
use Illuminate\Http\Request;

class Menu extends DM_BaseModel
{
    protected $table = 'menus';

    /** Navigation for Frontend */
    public static function tree($lang_id) {
        $data['rows'] = DB::table('menus')->where('status', '=', 1)->orderBy('order')
                    ->join('menus_name', 'menus.id', '=', 'menus_name.menu_id')
                    ->where('menus_name.lang_id', '=', $lang_id)
                    ->select('menus.*', 'menus_name.lang_id', 'menus_name.name as menu_name')->orderBy('order')
                    ->get();
        $ref = [];
        $items = [];
        foreach($data['rows'] as $row){
            $thisRef = &$ref[$row->id];
            $thisRef['name'] = $row->name;
            $thisRef['order'] = $row->order;
            $thisRef['parent_id'] = $row->parent_id;
            $thisRef['id'] = $row->id;
            $thisRef['url'] = $row->url;
            $thisRef['target'] = $row->target;
            $thisRef['menu_name'] = $row->menu_name;
            if($row->parent_id == 0) {
                $items[$row->id] = &$thisRef;
            } else {
                $ref[$row->parent_id]['child'][$row->id] = &$thisRef;
            } 
        }
        return $items;
    }

    /** Dashboard Menu Tree */
    public function dashboardTree () {
        $data['rows'] = Menu::orderBy('order')->get();
        $ref = [];
        $items = [];
        foreach($data['rows'] as $row){
            $thisRef = &$ref[$row->id];
            $thisRef['name'] = $row->name;
            $thisRef['order'] = $row->order;
            $thisRef['parent_id'] = $row->parent_id;
            $thisRef['id'] = $row->id;
            $thisRef['url'] = $row->url;
            $thisRef['status'] = $row->status;
            if($row->parent_id == 0) {
                $items[$row->id] = &$thisRef;
            } else {
                $ref[$row->parent_id]['child'][$row->id] = &$thisRef;
            } 
        }
        return $items;
    }

     /**
     * Build Menu | Admin Panel
     */
    public function buildMenu ($items, $class = 'dd-list') {
        $html = "<ol class=\"".$class."\" id=\"menu-id\">";
        foreach($items as $key=>$value) {
            $html.= '<li class="dd-item dd3-item" data-id="'.$value['id'].'">
                        <div class="dd-handle dd3-handle"></div>
                        <div class="dd3-content"><span id="label_show'.$value['id'].'">'.$value['name'].'</span> 
                            <span class="span-right">
                                <span id="link_show'.$value['id'].'">Status:'.$value['status'].'</span>
                                &nbsp;&nbsp; 
                                <a class="btn btn-warning" id="'.$value['id'].'" label="'.$value['name'].'" href="\dashboard/menu/'. $value['id'].'/edit" ><i class="fa fa-pencil"></i></a>
                                <a class="btn btn-danger del-button" id="'.$value['id'].'" ><i class="fa fa-trash-o"></i></a>
                            </span> 
                        </div>';
            if(array_key_exists('child',$value)) {
                $html .= self::buildMenu($value['child'],'child');
            }
                $html .= "</li>";
        }
        $html .= "</ol>";
        return $html;
    }

    // Getter for the HTML menu builder | Admin Panel
	public function getHTML($items)
	{
		return $this->buildMenu($items);
	}

}


<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Illuminate\Http\Request;
use App\Model\Dcms\Eloquent\DM_Post;
use Auth;
use Illuminate\Support\Str;
use DB;

class Process extends DM_BaseModel
{
    public function storeData($name, $rows, $link, $status) {
        $row = new Process;
        $row->name = $name;
        $row->slug = Str::slug($name);
        $row->url = $link;
        $row->status = $status;
        $row->save();
        $cat_id = $row->id;
        foreach($rows as $row) {
            DB::table('process_name')->insert(array([
                'process_id' => $cat_id,
                'lang_id' => $row['lang_id'],
                'name' => $row['name'],
                'description' => $row['description'],
            ]));
        }
        return true;
    }

    public function updateData($id, $name, $rows, $link, $status) {
        // foreach( $rows as $row) {
        //     if(isset($row['id'])){
        //         $popup = Process::findOrFail($row['id']);
        //     }else{
        //         $popup = new Process;
        //         $popup->unique_id = $unique_id;
        //     }
        //     $popup->lang_id = $row['lang_id'];
        //     $popup->title = $row['title'];
        //     $popup->description = $row['description'];
        //     $popup->url = $link;
        //     $popup->status = $status;
        //     $popup->save();
        // }
        // if($popup->save()) {
        //     return true;
        // }else {
        //     return false;
        // }
        $row = Process::findOrFail($id);
        $row->name = $name;
        $row->slug = Str::slug($name);
        $row->url = $link;
        $row->status = $status;
        $row->save();
        foreach($rows as $row) {
            DB::table('process_name')->where('process_id', $id)
            ->where('lang_id', $row['lang_id'])
            ->update([
                'process_id' => $id,
                'lang_id' => $row['lang_id'],
                'name' => $row['name'],
                'description' => $row['description'],
            ]);
        }
        return true;
    }

      /** process Tree */
      public function processTree() {
        $data['rows'] = Process::orderBy('order')->get();
        $ref = [];
        $items = [];
        foreach($data['rows'] as $row){
            $thisRef = &$ref[$row->id];
            $thisRef['name'] = $row->name;
            $thisRef['parent_id'] = $row->parent_id;
            $thisRef['id'] = $row->id;
            $thisRef['unique_id'] = $row->unique_id;
            if($row->parent_id == 0) {
                $items[$row->id] = &$thisRef;
            } else {
                $ref[$row->parent_id]['child'][$row->id] = &$thisRef;
            }
        }
        return $items;
    }

     /**
     * Build Category | Admin Panel
     */
    public function buildCategory($items, $class = 'dd-list') {
        $html = "<ol class=\"".$class."\" id=\"menu-id\">";
        foreach($items as $key=>$value) {
            $html.= '<li class="dd-item dd3-item" data-id="'.$value['id'].'">
                        <div class="dd-handle dd3-handle"></div>
                        <div class="dd3-content"><span id="label_show'.$value['id'].'">'.$value['name'].'</span>
                            <span class="span-right">
                                &nbsp;&nbsp;
                                <a class="btn btn-warning" id="'.$value['id'].'" label="'.$value['name'].'" href="\dashboard/process/'. $value['id'].'/edit" ><i class="fas fa-pencil-alt"></i></a>
                                <a class="btn btn-danger del-button" id="'.$value['id'].'" ><i class="far fa-trash-alt"></i></a>
                            </span>
                        </div>';
            if(array_key_exists('child',$value)) {
                $html .= self::buildCategory($value['child'],'child');
            }
                $html .= "</li>";
        }
        $html .= "</ol>";
        return $html;
    }

    // Getter for the HTML menu builder | Admin Panel
	public function getHTML($items)
	{
		return $this->buildCategory($items);
	}

}


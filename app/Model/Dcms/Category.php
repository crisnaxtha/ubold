<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Auth;
use Illuminate\Support\Str;
use DB;

class Category extends DM_BaseModel
{
    /** One to many Relationship between Posts and Category */
    public function posts() {
        return $this->hasMany(Post::class);
    }

     /** Category Tree */
     public function categoryTree() {
        $data['rows'] = Category::orderBy('order')->get();
        $ref = [];
        $items = [];
        foreach($data['rows'] as $row){
            $thisRef = &$ref[$row->id];
            $thisRef['name'] = $row->name;
            $thisRef['parent_id'] = $row->parent_id;
            $thisRef['id'] = $row->id;
            $thisRef['category_unique_id'] = $row->category_unique_id;
            $thisRef['featured'] = $row->featured;
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
                                <span id="link_show'.$value['id'].'">Featured:'.$value['featured'].'</span>

                                &nbsp;&nbsp;
                                <a class="btn btn-warning" id="'.$value['id'].'" label="'.$value['name'].'" href="\dashboard/category/'. $value['id'].'/edit" ><i class="fas fa-pencil-alt"></i></a>
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

    public function storeData($icon, $color, $name, $rows, $featured) {

        $row = new Category;
        $row->icon = $icon;
        $row->color = $color;
        $row->name = $name;
        $row->slug = Str::slug($name);
        $row->featured = $featured;

        $row->save();
        $cat_id = $row->id;
        foreach($rows as $row) {
            DB::table('categories_name')->insert(array([
                'category_id' => $cat_id,
                'lang_id' => $row['lang_id'],
                'name' => $row['name'],
            ]));
        }
        return true;
    }

    public function updateData($id, $icon, $color, $name, $rows, $featured) {
        $row = Category::findOrFail($id);
        $row->icon = $icon;
        $row->color = $color;
        $row->name = $name;
        $row->featured = $featured;
        $row->save();
        $cat_id = $row->id;
        foreach($rows as $row) {
            DB::table('categories_name')->where('category_id', $id)
            ->where('lang_id', $row['lang_id'])
            ->update([
                'category_id' => $cat_id,
                'lang_id' => $row['lang_id'],
                'name' => $row['name'],
            ]);
        }
        return true;
    }

}

<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Auth;
use Illuminate\Support\Str;

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
                                <a class="btn btn-warning" id="'.$value['id'].'" label="'.$value['name'].'" href="\dashboard/category/'. $value['category_unique_id'].'/edit" ><i class="fas fa-pencil-alt"></i></a>
                                <a class="btn btn-danger del-button" id="'.$value['category_unique_id'].'" ><i class="far fa-trash-alt"></i></a>
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

    public function storeData($icon, $color, $rows, $featured) {
        $category_unique_id = uniqid(Auth::user()->id.'_');
        foreach( $rows as $row) {
            $links[] = [
                'category_unique_id' => $category_unique_id,
                'icon' => $icon,
                'color' => $color,
                'lang_id' => $row['lang_id'],
                'name' => $row['name'],
                'slug' => Str::slug($row['name']),
                // 'description' => $row['description'],
                'featured' => $featured
            ];
        }
        if(Category::insert($links)) {
            return true;
        }else {
            return false;
        }
    }

    public function updateData($category_unique_id, $icon, $color, $rows, $featured) {
        foreach( $rows as $row) {
            if(isset($row['id'])){
                $category = Category::findOrFail($row['id']);
            }else{
                $category = new Category;
                $category->category_unique_id = $category_unique_id;
            }
            $category->lang_id = $row['lang_id'];
            $category->icon = $icon;
            $category->color = $color;
            $category->name = $row['name'];
            $category->featured = $featured;
            $category->save();
        }
        if($category->save()) {
            return true;
        }else {
            return false;
        }
    }

}

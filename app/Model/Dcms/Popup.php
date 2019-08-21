<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Illuminate\Http\Request;
use Auth;

class Popup extends DM_BaseModel
{
    protected $panel;
    protected $base_route;
    protected $view_path;
    protected $model;
    protected $table = 'popups';

    protected $folder_path_image;
    protected $folder_path_file;
    protected $folder = 'pop';
    protected $prefix_path_image = '/upload_file/images/popup/';

    public function __construct() {
        $this->folder_path_image = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
    }

    public function storeData(Request $request, $image, $rows, $link, $order, $status ) {
        if($request->hasFile('image')){
            $image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image','','');
        }
        else {
            $image = null;
        }
        $popup_unique_id = uniqid(Auth::user()->id.'_');
        foreach( $rows as $row) {
            $links[] = [
                'popup_unique_id' => $popup_unique_id,
                'lang_id' => $row['lang_id'],
                'title' => $row['title'],
                'description' => $row['description'],
                'link'  => $link,
                'order' => $order,
                'status' => $status,
                'image' => $image,
                'created_at' => date('Y-m-d-h-m-s')
            ];
        }
        if(Popup::insert($links)) {
            return true;
        }else {
            return false;
        }
    }

    public function updateData(Request $request, $popup_unique_id, $image, $rows, $link, $order, $status ) {
        if($request->hasFile('image')){
            $image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image','','');
        }
        else {
            $image = '';
        }
        foreach( $rows as $row) {
            if(isset($row['id'])){
                $popup = Popup::findOrFail($row['id']);
            }else{
                $popup = new Popup;
                $popup->popup_unique_id = $popup_unique_id;
            }
            $popup->lang_id = $row['lang_id'];
            $popup->title = $row['title'];
            $popup->description = $row['description'];
            $popup->order = $order;
            $popup->link = $link;
            $popup->image = $image;
            $popup->status = $status;
            $popup->save();
        }
        if($popup->save()) {
            return true;
        }else {
            return false;
        }
    }
}

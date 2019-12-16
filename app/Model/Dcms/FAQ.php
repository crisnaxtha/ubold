<?php

namespace App\Model\Dcms;

use Illuminate\Database\Eloquent\Model;
use Auth;

class FAQ extends Model
{
    protected $table = 'f_a_qs';

    public function storeData($icon, $color, $rows, $link, $order, $status){
        $unique_id = uniqid(Auth::user()->id.'_');
        foreach( $rows as $row) {
            $links[] = [
                'unique_id' => $unique_id,
                'lang_id' => $row['lang_id'],
                'title' => $row['title'],
                'description' => $row['description'],
                'link'  => $link,
                'order' => $order,
                'status' => $status,
            ];
        }
        if(FAQ::insert($links)) {
            return true;
        }else {
            return false;
        }
    }

    public function updateData($unique_id, $icon, $color, $rows, $link, $order, $status) {
        foreach( $rows as $row) {
            if(isset($row['id'])){
                $service = FAQ::findOrFail($row['id']);
            }else{
                $service = new FAQ;
                $service->unique_id = $unique_id;
            }
            $service->lang_id = $row['lang_id'];
            $service->title = $row['title'];
            $service->description = $row['description'];
            $service->order = $order;
            $service->link = $link;
            $service->status = $status;
            $service->save();
        }
        if($service->save()) {
            return true;
        }else {
            return false;
        }
    }
}

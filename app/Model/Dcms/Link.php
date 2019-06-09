<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Auth;

class Link extends DM_BaseModel
{
    public function storeData($rows, $status, $order, $url) {
        $link_unique_id = uniqid(Auth::user()->id.'_');
        foreach( $rows as $row) {
            $links[] = [
                'link_unique_id' => $link_unique_id,
                'lang_id' => $row['lang_id'],
                'name' => $row['name'],
                'url'  => $url,
                'order' => $order,
                'status' => $status,
            ];
        }
        if(Link::insert($links)) {
            return true;
        }else {
            return false;
        }
    }

    public function updateData($link_unique_id, $rows, $status, $order, $url) {
        foreach( $rows as $row) {
            if(isset($row['id'])){
                $link = Link::findOrFail($row['id']);
            }else{
                $link = new Link;
                $link->link_unique_id = $link_unique_id;
            }
            $link->lang_id = $row['lang_id'];
            $link->name = $row['name'];
            $link->order = $order;
            $link->url = $url; 
            $link->status = $status;
            $link->save();
        }
        if($link->save()) {
            return true;
        }else {
            return false;
        }
    }
}

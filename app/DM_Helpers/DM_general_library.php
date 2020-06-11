<?php
use App\Model\Dcms\Eloquent\DM_Post;

if(!function_exists('dm_albumCategoryName')){
    function dm_albumCategoryName($lang_id, $albumCategoryId) {
        $data = DM_Post::joinAlbumCategoryName($lang_id, $albumCategoryId);
        return $data;
    }
}

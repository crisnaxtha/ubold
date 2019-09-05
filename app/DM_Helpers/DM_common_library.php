<?php
/**
 * showing the status
 */
if(!function_exists('dm_flag')){
    function dm_flag($value) {
        if($value){?>
    <button class="btn btn-xs btn-round btn-success">
        <i class="fa fa-check"></i>
    </button>
       <?php }
    else{ ?>
        <button class="btn btn-xs btn-round btn-danger">
            <i class="fa fa-minus-circle"></i>
        </button>
       <?php
        }
    }
}
/** Showing User Role */
if(!function_exists('dm_userRole')){
    function dm_userRole($value) {
        if($value == "super-admin") {
            echo $role = "<i style='color:white;padding:5px;background:#78CD51'>Super Admin</i>";
        }elseif($value == "admin" ) {
           echo $role = "<i style='color:white;padding:5px;background:#e4ba00'>Admin</i>";
        }elseif($value == "editor") {
           echo $role = "<i style='color:white;padding:5px;background:#53bee6'>Editor</i>";
        }else {
           echo $role = "<i style='color:white;padding:5px;background:#ec6459'>No Role Assign</i>";
        }
    }
}

if(!function_exists('dm_linkToEmbed')){
    function dm_linkToEmbed($string, $width="100%", $height=280) {
        return preg_replace(
            "/\s*[a-zA-Z\/\/:\.]*youtu(be.com\/watch\?v=|.be\/)([a-zA-Z0-9\-_]+)([a-zA-Z0-9\/\*\-\_\?\&\;\%\=\.]*)/i",
            "<iframe width=\"$width\" height=\"$height\" src=\"//www.youtube.com/embed/$2\" allowfullscreen></iframe>",
            $string
        );
    }
}

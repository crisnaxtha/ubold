<?php

namespace App\Model\Dcms;

use App\Model\Dcms\DM_BaseModel;
use Illuminate\Http\Request;
use DateTime;
use App\Model\Dcms\Branch;
use Auth;

class Staff extends DM_BaseModel
{
    protected $panel;
    protected $base_route;
    protected $view_path;
    protected $model;
    protected $table = 'staff';

    protected $folder_path_image;
    protected $folder_path_file;
    protected $folder = 'staff';
    protected $prefix_path_image = '/upload_file/images/staff/';
    
   /**
     * Relationship between branch and staff
     */
    public function branch() {
        return $this->belongsTo(Branch::class, 'branch_id', 'id' );
    }

    public function __construct() {
        $this->folder_path_image = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
    }

    public function storeData(Request $request, $rows, $image, $branch_id, $status, $level){
        $staff_unique_id = uniqid(Auth::user()->id.'_');
        // for thumbnail 
        if($request->hasFile('image')){
            $staff_image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image');  
        }
        else {
            $staff_image = null;
        }

        foreach($rows as $row) {
            $staff[] =[
                'lang_id' => $row['lang_id'],
                'staff_unique_id' => $staff_unique_id,
                'name' => $row['name'],
                'image' => $staff_image,
                'description' => $row['description'],
                'designation' => $row['designation'],
                'status' => $status,
                'level' => $level,
                'branch_id' => $branch_id,
                'created_at' => new DateTime(),
            ];

        }
    
        if(Staff::insert($staff)){
            return true;
        }
        else {
            return false;
        }
    }

    /**
     * Update the branch office
     */
    public function updateData(Request $request, $rows, $image, $branch_id, $status, $level) {
        $staff_unique_id = uniqid(Auth::user()->id.'_');
        foreach( $rows as $row) {
            if(isset($row['id'])){
                $staff = Staff::findOrFail($row['id']);
            }else{
                $staff = new Staff;
                $staff->staff_unique_id = $staff_unique_id;
            }
            $staff->lang_id = $row['lang_id'];
            $staff->name = $row['name'];
            if($request->hasFile('image')){
                $staff->image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image');  
            }
            $staff->description = $row['description'];
            $staff->designation = $row['designation'];
            $staff->level = $level;
            $staff->branch_id = $branch_id;
            $staff->status = $status;
            $staff->save();
            
        }
        if($staff->save()) {
            return true;
        }else {
            return false;
        }

    }
}

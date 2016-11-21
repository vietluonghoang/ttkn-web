<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 9/17/2016
 * Time: 6:21 PM
 */
class Process_khach_data extends BF_Model
{
    public function run($khach_data){
        $data = array();
        foreach($khach_data as $key => $item){
            if($item->id){
                $data[$key]["khach_id"] = $item->id;
                $name_data = $this->e_khach_name->where("khach_id",$item->id)->find_all();
                foreach($name_data as $k => $i){
                    $data[$key]["name"][$k]["chu_id"] = $i->chu_id;
                    $data[$key]["name"][$k]["name"] = $i->content;
                    $data[$key]["name"][$k]["name_id"] = $i->id;
                }
                $giay_to_data = $this->e_khach_paper->with_paper_type()->select("bf_khach_paper.id,bf_khach_paper.chu_id,bf_khach_paper.content,bf_paper_type.name")->where("khach_id",$item->id)->find_all();
                if(is_array($giay_to_data) > 0){
                    foreach($giay_to_data as $k => $i){
                        $data[$key]["giay_to"][$k]["chu_id"] = $i->chu_id;
                        $data[$key]["giay_to"][$k]["maso"] = $i->content;
                        $data[$key]["giay_to"][$k]["loai"] = $i->name;
                        $data[$key]["giay_to"][$k]["id"] = $i->id;
                    }
                }
                $dia_chi_data = $this->e_khach_address->where("khach_id",$item->id)->find_all();
                if(is_array($dia_chi_data) > 0) {
                    foreach ($dia_chi_data as $k => $i) {
                        $data[$key]["dia_chi"][$k]["chu_id"] = $i->chu_id;
                        $data[$key]["dia_chi"][$k]["diachi"] = $i->content;
                        $data[$key]["dia_chi"][$k]["diachi_id"] = $i->id;
                    }
                }
                $ghi_chu_data = $this->e_khach_note->where("khach_id",$item->id)->find_all();
                if(is_array($ghi_chu_data) > 0) {
                    foreach ($ghi_chu_data as $k => $i) {
                        $data[$key]["ghichu"][$k]["chu_id"] = $i->chu_id;
                        $data[$key]["ghichu"][$k]["ghichu"] = $i->content;
                        $data[$key]["ghichu"][$k]["ghichu_id"] = $i->id;
                    }
                }
                $phone_data = $this->e_khach_phone->where("khach_id",$item->id)->find_all();
                if(is_array($phone_data) > 0) {
                    foreach ($phone_data as $k => $i) {
                        $data[$key]["phone"][$k]["chu_id"] = $i->chu_id;
                        $data[$key]["phone"][$k]["phone"] = $i->content;
                        $data[$key]["phone"][$k]["phone_id"] = $i->id;
                    }
                }
                $image_data = $this->e_khach_image->where("khach_id",$item->id)->find_all();
                if(is_array($image_data)>0){
                    foreach($image_data as $k => $i){
                        if(isset($i->chu_id)){
                            $data[$key]["image"][$k]["chu_id"] = $i->chu_id;
                            $data[$key]["image"][$k]["id"] = $i->id;
//                            if($k == 0){
//                                $data[$key]["image"][$k]["path"] =  @ih_image($i->path, 0, 0, true, null, 0, true);
//                            }
                            $data[$key]["image"][$k]["path"] =  @ih_image($i->path, 1000, 1000, true, null, 0, true);
                        }
                    }
                }
            }
        }
        return $data;
    }
}
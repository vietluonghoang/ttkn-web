<?php

/**
 * Created by PhpStorm.
 * User: nullpointerexx
 * Date: 3/2/16
 * Time: 9:37 AM
 */
class E_khach extends BF_Model
{
    protected $table_name = 'khach';
    protected $key = 'id';
    protected $return_insert_id = true;
    protected $set_created = true;
    protected $created_field = 'created_on';
    protected $date_format = 'datetime';

    public function __construct()
    {
        parent::__construct();
    }

    public function with_data()
    {
        $khach_name_tbl = $this->db->dbprefix('khach_name');
        $khach_paper_tbl = $this->db->dbprefix('khach_paper');
        $khach_address_tbl = $this->db->dbprefix('khach_address');
        $khach_note_tbl = $this->db->dbprefix('khach_note');
        $khach_phone_tbl = $this->db->dbprefix('khach_phone');
        $chu_khach_tbl = $this->db->dbprefix('chu_khach');
        $khach_tbl = $this->db->dbprefix($this->table_name);
        $this->join($khach_name_tbl, $khach_tbl . '.id = ' . $khach_name_tbl . '.khach_id', 'right')
            ->join($khach_paper_tbl, $khach_tbl . '.id = ' . $khach_paper_tbl . '.khach_id', 'right')
            ->join($khach_address_tbl, $khach_tbl . '.id = ' . $khach_address_tbl . '.khach_id', 'right')
            ->join($khach_note_tbl, $khach_tbl . '.id = ' . $khach_note_tbl . '.khach_id', 'right')
            ->join($khach_phone_tbl, $khach_tbl . '.id = ' . $khach_phone_tbl . '.khach_id', 'right')
            ->join($chu_khach_tbl, $khach_tbl . '.id = ' . $chu_khach_tbl . '.khach_id', 'right');
        return $this;
    }

    public function with_chu()
    {
        $chu_khach_tbl = $this->db->dbprefix('chu_khach');
        $khach_tbl = $this->db->dbprefix($this->table_name);
        $this->join($chu_khach_tbl, $khach_tbl . '.id = ' . $chu_khach_tbl . '.khach_id', 'right');
        return $this;
    }

}
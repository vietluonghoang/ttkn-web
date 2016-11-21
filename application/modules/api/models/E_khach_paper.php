<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/5/2016
 * Time: 10:36 PM
 */

class E_khach_paper extends BF_Model
{
    protected $table_name = 'khach_paper';
    protected $key = 'id';
    protected $return_insert_id = true;
    protected $date_format = 'datetime';
    protected $set_created = true;
    protected $created_field = 'created_on';

    public function __construct()
    {
        parent::__construct();
    }

    public function with_paper_type()
    {
        $paper_type_tbl = $this->db->dbprefix('paper_type');
        $khach_paper_tbl = $this->db->dbprefix('khach_paper');
        $this->join($paper_type_tbl, $khach_paper_tbl . '.paper_type_id = ' . $paper_type_tbl . '.id', 'inner');
        return $this;
    }
}
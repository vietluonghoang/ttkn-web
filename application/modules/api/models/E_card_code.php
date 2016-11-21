<?php
/**
 * Created by PhpStorm.
 * User: nullpointerexx
 * Date: 3/2/16
 * Time: 9:37 AM
 */

class E_card_code extends BF_Model
{
    protected $table_name = 'card_code';
    protected $key = 'id';
    protected $return_insert_id = true;
    protected $date_format = 'datetime';
    protected $set_created = true;
    protected $created_field = 'created_on';

    public function __construct()
    {
        parent::__construct();
    }

    public function with_chu()
    {
        $chu_tbl = $this->db->dbprefix('chu');
        $card_code_table = $this->db->dbprefix($this->table_name);
        $this->join($chu_tbl, $chu_tbl . '.id = ' . $card_code_table . '.chu_id', 'left');
        return $this;
    }
}
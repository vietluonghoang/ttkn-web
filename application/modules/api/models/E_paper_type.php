<?php
/**
 * Created by PhpStorm.
 * User: ngoct
 * Date: 8/31/2016
 * Time: 2:36 AM
 */

class E_paper_type extends BF_Model
{
    protected $table_name = 'paper_type';
    protected $key = 'id';
    protected $return_insert_id = true;
    protected $date_format = 'datetime';
    protected $set_created = true;
    protected $created_field = 'created_on';

    public function __construct()
    {
        parent::__construct();
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: nullpointerexx
 * Date: 3/2/16
 * Time: 9:37 AM
 */

class E_chu extends BF_Model
{
    protected $table_name = 'chu';
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
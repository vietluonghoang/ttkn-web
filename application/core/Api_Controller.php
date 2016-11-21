<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Api Controller
 *
 * This class provides a common place to handle any API request
 *
 * @package    Bonfire\Core\Controllers
 * @category   Controllers
 * @author     datls
 *
 */
class Api_Controller extends Base_Controller
{

	//--------------------------------------------------------------------

	/**
	 * Class constructor
	 *
	 */
	public function __construct()
	{
		parent::__construct();

		Events::trigger('before_api_controller');

		$this->load->library('template');
		$this->load->library('assets');
		$this->load->library('api_log');

		Template::set_theme('api', 'junk');

		Events::trigger('after_api_controller');
	}//end __construct()

	//--------------------------------------------------------------------

}

/* End of file Api_Controller.php */
/* Location: ./application/core/Api_Controller.php */
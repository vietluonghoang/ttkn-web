<?php

class Api_log
{

	/**
	 * Log for API connection
	 *
	 * @access private
	 * @static
	 *
	 * @var object
	 */
	protected $_log_path;
	protected $_sub_path = '';
	protected $_log_prefix = '';
	protected $_date_fmt = 'Y-m-d H:i:s';
	protected $_enabled = true;

	/**
	 * Constructor
	 */
	public function __construct($log_config = null)
	{
		$config = &get_config();

		$this->_log_path = APPPATH . 'api_logs/';

		$this->_sub_path = empty($log_config['sub_path']) ? '' : $log_config['sub_path'] . '/';

		$this->_log_prefix = empty($log_config['log_filename_prefix']) ? '' : $log_config['log_filename_prefix'] . '_';

		if (!is_dir($this->_log_path) or !is_really_writable($this->_log_path)) {
			$this->_enabled = false;
		}

		if ($config['log_date_format'] != '') {
			$this->_date_fmt = $config['log_date_format'];
		}
	}

	public function set_sub_path($sub_path = '')
	{
		$this->_sub_path = empty($sub_path) ? '' : $sub_path . '/';
	}

	public function set_log_file_prefix($log_filename_prefix = '')
	{
		$this->_log_prefix = empty($log_filename_prefix) ? '' : $log_filename_prefix . '_';
	}

	/**
	 * Write Log File
	 *
	 * Generally this function will be called using the global log_message() function
	 *
	 * @param	string	the error level
	 * @param	string	the error message
	 * @param	bool	whether the error is a native PHP error
	 * @return	bool
	 */
	public function write_log($msg = '')
	{
		$ci = &get_instance();

		$level_api = $ci->settings_lib->item('api.log_level');

		if ($level_api == 0)
			return false;

		if (!is_dir($this->_log_path))
			return false;

		if (!is_dir($this->_log_path . $this->_sub_path))
			if (!mkdir($this->_log_path . $this->_sub_path, 0777, true))
				return false;

		$message = date($this->_date_fmt) . " --> " . 'REQUEST URI: ' . $_SERVER['REQUEST_URI'] . "\r\n\r\n";
		$message .= 'FROM IP: ' . $_SERVER['REMOTE_ADDR'] . "\r\n\r\n";
		$message .= 'REQUEST METHOD: ' . $_SERVER['REQUEST_METHOD'] . "\r\n\r\n";
		$message .= 'POST DATA: ' . var_export($_POST, 1) . "\r\n\r\n";
		if (! empty($_FILES)) $message .= 'FILES DATA: ' . var_export($_FILES, 1) . "\r\n\r\n";

		if ($level_api == 2)
			$message .= 'RETURN DATA: ' . $ci->output->get_output() . "\r\n";

		$message .= empty($msg) ? '' : "\r\n" . $msg . "\r\n";
		$message .= '-----------------------------------------------------------------------------------------------------------------------' . "\r\n";

		if ($this->_enabled === false)
			return false;

		$filepath = $this->_log_path . $this->_sub_path . $this->_log_prefix . date('Y-m-d') . '.log';

		if (!$fp = @fopen($filepath, FOPEN_WRITE_CREATE)) {
			return false;
		}

		flock($fp, LOCK_EX);
		fwrite($fp, $message);
		flock($fp, LOCK_UN);
		fclose($fp);
		@chmod($filepath, FILE_WRITE_MODE);
		return true;
	}
}

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class OrderManagementSystem extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	public function _crud_output($output = null)
	{
		$this->load->view('order_management_system.php',(array)$output);
	}

	public function index()
	{
		// $this->_crud_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
		$crud = new grocery_CRUD();

			// $crud->set_relation('customerNumber','customers','{contactLastName} {contactFirstName}');
			// $crud->display_as('customerNumber','Customer');

			$crud->set_theme('bootstrap-v4');
			$crud->set_table('orders');
			$crud->columns('order_id','service_number','segment_group','product_name','order_status');
			$crud->display_as('order_id','Order ID')
				 ->display_as('service_number','Service Number')
				 ->display_as('segment_group','Segment Group')
				 ->display_as('product_name','Product Name')
				 ->display_as('order_status','Order Status')
				 ->display_as('remark','Remark')
				 ->display_as('State','State');	 
			$crud->required_fields('service_number','order_status','remark','state');
			$crud->edit_fields('order_id','service_number','segment_group','product_name','order_status','remark','state');
			$state_code = $crud->getState();
			if($state_code == 'edit') {
				$crud->field_type('order_id', 'readonly');
			}
			$crud->field_type('order_status','enum',array('Processing','Completed'));
			$crud->field_type('state','enum',array(
			'Johor',
			'Kedah',
			'Kelantan',
			'Melaka',
			'Negeri Sembilan',
			'Pahang',
			'Perak',
			'Perlis',
			'Pulau Pinang',
			'Sabah',
			'Sarawak',
			'Selangor',
			'Terengganu',
			'W.P. Kuala Lumpur',
			'W.P. Labuan',
			'W.P. Putrajaya'));
			$crud->set_subject('Order');

			$crud->unset_clone();

			$output = $crud->render();

			$this->_crud_output($output);
	}
}

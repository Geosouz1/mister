<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Principais extends CI_Controller {

	public function __construct(){
		parent::__construct();

	//	$this->load->model('Principal/Principal');
	}

	public function index(){

		$this->template->load('sistemas/template/index','principais/index');
	}

	public function contato () {
		
	}

};

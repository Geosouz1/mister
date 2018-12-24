<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Pedidos extends CI_Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index(){

		$this->template->load('sistemas/template/templatePedido','pedidos/pedidos');
		
	}

	}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property Cardapio $Cardapio Cardapio
 */

class Cardapios extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$this->load->model('Cardapio/Cardapio');
	}

	public function index(){
            $tipoProduto = $this->Cardapio->tipoProduto();
            die($tipoProduto);
		$this->template->load('sistemas/template/index','cardapios/cardapios');
	}

	public function contato () {
		
	}

};

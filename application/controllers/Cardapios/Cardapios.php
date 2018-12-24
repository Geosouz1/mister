<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property Cardapio $Cardapio Cardapio
 */
class Cardapios extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->load->model('Cardapio/Cardapio');
    }

    public function index() {
        redirect('cardapio/lista');
        
    }

    public function lista() {
        $data['tipoProdutos'] = $this->Cardapio->tipoProduto();
       // stop(var_dump($data['tipoProdutos']));

        $this->template->load('sistemas/template/index', 'cardapios/cardapios', $data);
    }

    public function contato() {
        
    }

}

;

<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cardapio extends CI_Model {

    public $index = '';
    public $primary_key = '';

    function tipoProduto() {
         $query = $this->db->get('tipo_produto');
        foreach ($query->result_array() as $row) {
            echo $row['id_tipo_produto'];
            echo $row['nome'];
            
        }
    }

    function produto() {
        
    }

}

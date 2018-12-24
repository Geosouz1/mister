<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of sistemas
 * @property Sistema $Sistema Sistema
 * @author geovani
 */
class Sistemas extends CI_Controller {

    public $table = 'usuario';
    public $primary_key = '';

    public function __construct() {
        parent::__construct();

        $this->load->model(['Sistema/Sistema']);
        $this->load->helper("funcoes_helper");
    }

  
         public function index() {
        redirect('mister');
    }

    

    public function logins() {
        
        
        if ($_POST==true) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
           
        
            /**
             *  Verify process and storing user_id to session
             */
            $verify = $this->Sistema->verify($username, $password);
            
            if ($verify == 1) {
                /* Set session of status login if success */
                $this->session->set_userdata('login_status', 'ok');

               
                redirect('mister/sistema');
            
            } else {
                /* Destory session if failed */
                        // $this->session->sess_destroy();
                $this->session->set_userdata(['error' => 'Erro !! Nome de usuário e senha inválidos']);
                redirect('mister');
            }
       
        } else {
            $data['error'] = $this->session->userdata('error');

            $this->load->view('sistemas/logins/index', $data);
            // $this->load->view('auth/index');
        }
        
        
    }
    
    public function inicio() {
        
        $this->load->view('sistemas/template/principal');
    }

   
}

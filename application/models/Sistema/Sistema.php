<?php


class Sistema extends CI_Model {
    
     public function verify($username, $password) {
        $user = $this->db->get_where('usuario', ['nome' => $username, 'senha' => $password]);
        
        
        $data = $user->row_array();
        $user_array = $user->row_array();

        if ($user->num_rows() > 0) {
            if ($user_array['is_activated'] == '1') {
                $this->session->set_userdata([
                    'id_usuario' => $data['id'],
                ]);
                return 1;
            } else {
                $this->session->set_userdata('error', 'Peça ao administrador para verificar sua conta!!');
                redirect('mister/sistema');
            }
        } else {
            return 0;
        }
    }

}

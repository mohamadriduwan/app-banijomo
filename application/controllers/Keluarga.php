<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Keluarga extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }

    public function dataKeluarga()
    {
        $data['title'] = 'Data Keluarga';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['keluarga'] = $this->db->get('data_keluarga')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('keluarga/datakeluarga', $data);
        $this->load->view('templates/footer');
    }
}

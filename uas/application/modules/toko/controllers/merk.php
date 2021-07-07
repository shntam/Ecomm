<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Merk extends CI_Controller {

   public function merk_tanaman(){
    $data['tanaman']=$this->model_merk->tanaman()->result();
    $this->load->view('template/header');
    $this->load->view('template/sidebar');
    $this->load->view('merk/tanaman',$data);
    $this->load->view('template/footer');
   }

  

   public function cari(){
   $kunci    = $this->input->post('cari');
   $data['find']=$this->model_merk->cari($kunci);
   $this->load->view('template/header');
    $this->load->view('template/sidebar');
    $this->load->view('merk/tanaman',$data);
    $this->load->view('template/footer');

     }
  
}
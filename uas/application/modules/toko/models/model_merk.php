<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model_merk extends CI_Model {
    public function tanaman(){
        return $this->db->get_where('tb_brg',array('merk'=>'TANAMAN'));
    }
   

    public function cari($kunci){
        $this->db->select('*');
        $this->db->from('tb_brg');
        $this->db->like('nm_brg',$kunci);
        $this->db->or_like('harga',$kunci);
        return $this->db->get()->result();
    }
}
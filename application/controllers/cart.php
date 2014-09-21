<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cart extends CI_Controller {

	public function index()
	{
		$q['produk'] = $this->db->get("tbl_produk");
		$this->load->view('home',$q);
	}

	public function tambah()
	{
		$data = array(
			'id'      => $this->input->post('kode'),
			'qty'     => 1,
			'price'   => $this->input->post('harga'),
			'name'    => $this->input->post('nama'));
		$this->cart->insert($data);
		header('location:'.base_url().'');
	}

	public function hapus()
	{
		$data = array(
				'rowid' => $this->uri->segment(3),
				'qty'   => 0);
				$this->cart->update($data);
		header('location:'.base_url().'');
	}
}
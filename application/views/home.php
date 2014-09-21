<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

	<style type="text/css">

	::selection{ background-color: #E13300; color: white; }
	::moz-selection{ background-color: #E13300; color: white; }
	::webkit-selection{ background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 40px;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}
	
	.add{
	text-align:right;
	float:right;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body{
		margin: 0 15px 0 15px;
		width:47%;
		float:left;
	}
	
	p.footer{
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
	}
	
	#container{
		margin: 10px;
		border: 1px solid #D0D0D0;
		-webkit-box-shadow: 0 0 8px #D0D0D0;
	}
	</style>
</head>
<body>

<div id="container">

	<div id="body">
		<?php
			$no = 1;
			foreach($produk->result_array() as $p)
			{
				echo form_open('cart/tambah');
		?>
				<p><?php echo $no; ?>. Sandal <?php echo $p['nama_produk']; ?><span class="add">
				Rp. <?php echo number_format($p['harga'],2,',','.'); ?>
				<input type="hidden" name="nama" value="Sandal <?php echo $p['nama_produk']; ?>">
				<input type="hidden" name="harga" value="<?php echo $p['harga']; ?>">
				<input type="hidden" name="kode" value="<?php echo $p['kode_produk']; ?>">
				<input type="submit" value="Tambah">
				
				</span></p>
		<?php
				echo form_close();
				$no++;
			}
		?>
	</div>

	<div id="body">
		<?php foreach($this->cart->contents() as $items): ?>
				<p><?php echo $items['name']; ?><span class="add">Rp. <?php echo number_format($items['price'],2,',','.'); ?>
				<a href="<?php echo base_url(); ?>index.php/cart/hapus/<?php echo $items['rowid']; ?>">x</a>
				</span></p>
		<?php endforeach; ?>
	</div>
	<p style="clear:both; width:100%;"></p>
	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p>
</div>

</body>
</html>
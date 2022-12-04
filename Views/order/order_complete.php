 
<!-- pages-title-start -->
<div class="pages-title section-padding"style="background: rgba(0, 0, 0, 0) url(public/img/page-title.png) repeat scroll 0 0 !important;">
	<div class="container">
		<style type="text/css">
            .text-left li a,span,p{
                color: white;
                font-size: 20px;
            }
            .text-left li a:hover{
                color: #fe5858;
            }
        </style>
		<div class="row">
			<div class="col-xs-12">
				<div class="pages-title-text text-center">
					<h2 style="color:white">Xác Nhận Hóa Đơn</h2>
					<ul class="text-left">
						<li><a href="index.php?act=home">Trang chủ</a></li>
						<li style="color:white"><span> // Xác Nhận Hóa Đơn</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
  <div class="col-12" style="padding:0;background-color:#F5F5F5">
      <img src="public/img/wavetim.png" width="100%" height="100%px" style="margin-top: -2px; ">
    </div>
<!-- pages-title-end -->
<!-- order-complete content section start -->
<section class="pages checkout order-complete section-padding">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 text-center">
				<div class="complete-title">
					<p>Cảm ơn bạn.Còn Một Bước Để Xác Nhận Hóa Đơn.</p>
					<p>Vui Lòng Chờ Xét Duyệt</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="padding60">
					<div class="log-title">
						<h3><strong>KHÓA HỌC CỦA BẠN</strong></h3>
					</div>
					<div class="cart-form-text pay-details">
						<form action="?act=checkout&xuli=save" method="post">
						<table>
							<thead>
								<tr>
									<th>Các Khóa Học</th>
									<td>Tiền</td>
								</tr>
							</thead>
							<tbody>
								<?php if (isset($_SESSION['sanpham'])) {
									foreach ($_SESSION['sanpham'] as $value) { ?>
										<tr>
											<th><?= $value['TenSP'] ?></th>
											<td><?= number_format($value['ThanhTien']) ?> VNĐ</td>
										</tr>
								<?php }
								} ?>
								<tr>
							<th>Phí Đăng Kí</th>
							<td>3,000 VNĐ</td>
						</tr>
								<tr>
									<th>VAT</th>
									<td>0 VNĐ</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th>Tổng tiền</th>
									<td><?= number_format($count + 3000) ?> VNĐ</td>
								</tr>
								<tr>
									<td><div class="submit-text"><button type="submit" onclick="xacnhan()">Xác Nhận Hóa Đơn</button></div></td>
								</tr>
							</tfoot>
						</table>
						</form>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6">
				<div class="order-details padding60">
					<div class="log-title">
						<h3><strong>CHI TIẾT KHÁCH HÀNG</strong></h3>
					</div>
					<div class="por-dse clearfix" >
						<ul>
							<li><span style="color:black;font-size:15px">Tên KH<strong>:</strong></span> <?php echo $_SESSION['login']['Ho']. " " .$_SESSION['login']['Ten']?></li>
							<li><span style="color:black;font-size:15px">Email<strong>:</strong></span> <?=$_SESSION['login']['Email']?></li>
							<li><span style="color:black;font-size:15px">Số ĐT<strong>:</strong></span> <?=$_SESSION['login']['SDT']?></li>
						</ul>
					</div>
				</div>
				<div class="order-address bill padding60 text-left">
					<div class="log-title">
						<h3><strong>ĐỊA CHỈ THANH TOÁN</strong></h3>
					</div>
					<p class="text-left">Địa chỉ:<?=$_SESSION['login']['DiaChi']?></p>
					<p class="text-left">Phone: <?=$_SESSION['login']['SDT']?></p>
					<p class="text-left">Email: <?=$_SESSION['login']['Email']?></p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- order-complete content section end -->
<script type="text/javascript">
	function xacnhan(){
		alert("Đơn Hàng Của Bạn Đang Được Ghi Nhận Mời Bạn Kiểm Tra Gmail.");
	}
</script>
<?php
if (($_SERVER["REQUEST_METHOD"] == "POST")&&!empty($_POST['Email'])&&!empty($_POST['Name'])&&!empty($_POST['Title'])&&!empty($_POST['mess'])) {
require("./Mail/sendmail.php");
$mail= new Mailer();
$mail->feedMail($_POST['Email'],$_POST['Name'],$_POST['Title'],$_POST['mess']);
 echo "
 		<script charset='utf-8'>
 			alert('Cảm ơn bản đã đóng góp ý kiến,trung tâm sẽ sớm phản hồi đến bạn!');
 			document.getElementsByTagName('form')[0].reset();
 		</script> 
 	  ";
}
?>
<!-- pages-title-start -->
<div class="pages-title section-padding" style="background: rgba(0, 0, 0, 0) url(public/img/page-title.png) repeat scroll 0 0 !important;">
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
					<h2 style="color:white">Thông tin liên hệ</h2>
					<ul class="text-left">
						<li><a href="?act=home">Trang chủ </a></li>
						<li style="color:white"><span> // Liên hệ</span> </li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-12" style="padding:0;background-color:#F5F5F5">
      <img src="public/img/wavetim.png" width="100%" height="100%px" style="margin-top: -2px; ">
    </div>
</div>
<!-- pages-title-end -->
<!-- contact content section start -->
<div class="pages contact-page section-padding">
	<div class="container-fluid text-center">
		<div class="row" style="background:#edecf0;">
			<div class="customcontrol col-lg-6 ">
				<div class="bando">
					<div class="">
						<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d61536.56205981417!2d108.16963158732946!3d16.055298680344745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zY8ahIHPhu58gZOG6oXkgdGjDqm0ga2h1IHbhu7FjIMSRw6AgbuG6tW5n!5e0!3m2!1svi!2s!4v1619802594942!5m2!1svi!2s" width="100%" height="500"  allowfullscreen="" loading="lazy"></iframe>
					</div>
				</div>
			</div>
			<div class="customcontrol col-lg-6 " >
					<div class="row" style="margin-top: 20px ">
						<div class="col-12 text-center" >
							<h2  style="color: #c71875">Giải Đáp Mọi Thắc Mắc Của Bạn</h2>
						</div>
					</div>
				<div class="container-fluid" style="margin-top: 30px ">
					<form action="" method="post" id="formlh">
					<div class="row">
						<div class="col-sm-6">
							<style type="text/css">
								.input-group{
									width:100%;
									margin-bottom: 20px;
								}
								input,textarea{
									font-size: 20px !important;
								}
							</style>
							<div class="input-group mb-3">
							  <input id="Name" type="text" name="Name" class="form-control" placeholder="Họ và Tên" aria-label="Username"  required>
							</div>
						</div>
						<div class="col-sm-6" >
							<div class="input-group mb-3">
							  <input id="Email" type="text" name="Email" class="form-control" placeholder="Email" aria-label="Server"  required>
							 </div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="input-group mb-3">
							 	<input id="Title" type="text" name="Title" class="form-control" placeholder="Tiêu Đề" aria-label="Server" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="form-floating">
  								<textarea type="text" id="mess" name="mess" class="form-control" placeholder="Lời Nhắn (20-500 ký tự)" style="height: 200px" required></textarea>
							</div>
						</div>
					</div>
					<div class="row" style="margin-top:15px">
						<div class="col-12 " align="center" style="margin-top:20px">
							<div class="spinner-grow text-success"></div>
							<input type="submit"  class="btn" style="width: 70%;background:#4e40bf;color:white;margin-top:-15px;padding:10px"value="Gửi Liên Hệ"></input>
							<div class="spinner-grow text-success"></div>
						</div>
					</div>
				    </form>
				</div>
			</div>
			
	</div>
		<div class="row">
			<div class="col-sm-10 col-text-center">
				<div class="contact-details" style="top: 0;">
					<div class="row">
						<style type="text/css">
							.single-contact i{
								color: #9acd32;
							}
							.single-contact p{
								font-size: 20px !important;
							}
						</style>
						<div class="col-sm-4">
							<div class="single-contact">
								<i class="mdi mdi-map-marker"></i>
								<p>Hòa Vang</p>
								<p>Trường đại học CNTT&TT Việt-Hàn</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="single-contact">
								<i class="mdi mdi-phone"></i>
								<p>(+84) 703057561</p>
								<p>(+84) 935271561</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="single-contact">
								<i class="mdi mdi-email"></i>
								<p>ndphi@gmail.com</p>
								<p>tttlien@vku.udn.vn</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- contact content section end -->
<!-- Google Map JS -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
	function initialize() {
	
		var mapOptions = {
		zoom: 17,
		hue: '#E9E5DC',
		scrollwheel: false,
		mapTypeId:google.maps.MapTypeId.TERRAIN,
		center: new google.maps.LatLng(16.078162, 108.213212)
		};

		var map = new google.maps.Map(document.getElementById('googleMap'),
			mapOptions);


		var marker = new google.maps.Marker({
		position: map.getCenter(),
		icon: 'public/img/map-marker.png',
		map: map
		});

	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>


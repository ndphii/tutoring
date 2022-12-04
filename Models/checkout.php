<?php
require_once("model.php");
require_once("detail.php");
class Checkout extends Model
{
  function save($data){
    $f = "";
    $v = "";
    foreach ($data as $key => $value) {
        $f .= $key . ",";
        $v .= "'" . $value . "',";
    }
    $f = trim($f, ",");
    $v = trim($v, ",");
    $query = "INSERT INTO hoadon($f) VALUES ($v);";
    //$query = "INSERT INTO hoadon(MaND,NgayLap,NguoiNhan,SDT,DiaChi,TongTien,TrangThai) VALUES ('".$MaND."','".$NgayLap."','".$NguoiNhan."','".$SDT."','".$DiaChi."','".$TongTien."','".$TrangThai."');";
    
    $status = $this->conn->query($query);

    $query_mahd = "select MaHD from hoadon ORDER BY NgayLap DESC LIMIT 1";
    $data_mahd = $this->conn->query($query_mahd)->fetch_assoc();

    foreach ($_SESSION['sanpham'] as $value) {
        $MaSP =$value['MaSP'];
        $SoLuong = $value['SoLuong'];
        $DonGia = $value['DonGia'];
        $MaHD = $data_mahd['MaHD'];
        $query_ct = "INSERT INTO chitiethoadon(MaHD,MaSP,SoLuong,DonGia) VALUES ($MaHD,$MaSP,$SoLuong,$DonGia)";

        $status_ct = $this->conn->query($query_ct);
    }
    
    if ($status == true and $status_ct = true) {
        setcookie('msg', 'Đăng ký thành công', time() + 2);
        header('location: ?act=checkout&xuli=order_complete');
        echo "<script src='/javascripts/application.js' type='text/javascript' charset='utf-8' async defer>
        alert'lỗi'</script>";
    } else {
        setcookie('msg', 'Đăng ký không thành công', time() + 2);
        header('location: ?act=checkout');

    }
  }
}
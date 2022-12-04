<?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
<a href="?mod=sanpham&act=add" type="button" class="btn btn-primary">Thêm Khóa Học</a> ! Các Khóa Học Được Phân Biệt Từng Lớp Khác Nhau,Từng Cấp Khác Nhau
<?php } ?>
<?php if (isset($_COOKIE['msg'])) { ?>
  <div class="alert alert-success">
    <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
  </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th scope="col">Mã Khóa Học</th>
      <th scope="col">Tên Khóa Học</th>
      <th scope="col">Giá thành</th>
      <th scope="col">Số lượng</th>
      <th scope="col">Trạng thái</th>
      <th scope="col">Hành Động</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($data as $row) { ?>
      <tr>
        <td scope="row"><?= $row['MaSP'] ?></td>
        <td><?= $row['TenSP'] ?></td>
        <td><?= $row['DonGia'] ?> VNĐ</td>
        <td><?= $row['SoLuong'] ?></td>
        <td><?= $row['TrangThai'] ?></td>
        <td class="text-center butAction">
          <a href="../index.php?act=detail&id=<?= $row['MaSP'] ?>" type="button" class="btn btn-success" target="_blank">Xem</a>
          <?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
          <a href="?mod=sanpham&act=edit&id=<?= $row['MaSP'] ?>" type="button" class="btn btn-warning">Sửa</a>
          <a href="?mod=sanpham&act=delete&id=<?= $row['MaSP'] ?>" onclick="return confirm('Bạn có thật sự muốn xóa ?');" type="button" class="btn btn-danger">Xóa</a>
          <?php } ?>
        </td>
      </tr>
    <?php } ?>
  </tbody>
</table>
<script>
  $(document).ready(function() {
    $('#dataTable').DataTable();
  });
</script>
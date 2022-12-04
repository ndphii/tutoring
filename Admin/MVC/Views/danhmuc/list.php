<?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
<a href="?mod=danhmuc&act=add" type="button" class="btn btn-primary">Thêm Danh Mục Khóa Học</a> ! Danh Mục Khóa Học Bao Gồm Các Cấp Học,Các Chương Trình Dạy Khác Nhau
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
      <th scope="col">Mã danh mục Khóa Học</th>
      <th scope="col">Tên danh mụcKhóa Học</th>
      <th scope="col">Hành Động</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($data as $row) { ?>
      <tr>
        <td><?= $row['MaDM'] ?></td>
        <td><?= $row['TenDM'] ?></td>
        <td class="text-center butAction">
          <a href="?mod=danhmuc&act=detail&id=<?= $row['MaDM'] ?>" class="btn btn-success">Xem Danh Mục</a>
          <?php if (isset($_SESSION['isLogin_Admin']) && $_SESSION['isLogin_Admin'] == true) { ?>
          <a href="?mod=danhmuc&act=edit&id=<?= $row['MaDM'] ?>" class="btn btn-warning">Sửa Danh Mục</a>
          <a href="?mod=danhmuc&act=delete&id=<?= $row['MaDM'] ?>" onclick="return confirm('Bạn có thật sự muốn xóa ?');" type="button" class="btn btn-danger">Xóa Danh Mục</a>
          <?php }?>
        </td>
      </tr>
    <?php } ?>
</table>
<script>
  $(document).ready(function() {
    $('#dataTable').DataTable();
  });
</script>
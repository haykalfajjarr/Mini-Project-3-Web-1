<?php
include 'function.php';
include 'koneksi.php';
session_start();

// Menyimpan nilai-nilai isian form sebelumnya
$nama_pesanan        = isset($_POST['nama_pesanan']) ? $_POST['nama_pesanan'] : '';
$alamat_pesanan      = isset($_POST['alamat_pesanan']) ? $_POST['alamat_pesanan'] : '';
$no_hp_pesanan       = isset($_POST['no_hp_pesanan']) ? $_POST['no_hp_pesanan'] : '';
$email_pesanan       = isset($_POST['email_pesanan']) ? $_POST['email_pesanan'] : '';
$jenis_pembayaran    = isset($_POST['jenis_pembayaran']) ? $_POST['jenis_pembayaran'] : '';

// Validasi checkbox konfirmasi
if (!isset($_POST['konfirmasi']) || $_POST['konfirmasi'] != 'on') {
    echo '<script>alert("Anda harus menyetujui pesanan!"); document.location="checkout.php";</script>';
    exit; // Hentikan eksekusi skrip jika checkbox tidak dikonfirmasi
}

// Lanjutkan dengan pemrosesan pesanan jika checkbox dikonfirmasi

// Memeriksa apakah ada barang di keranjang atau tidak
$cart       = isset($_SESSION['cart']) ? $_SESSION['cart'] : [];
$cart_total = $_SESSION['cart_total'];

if (count($cart) == 0 || $cart_total == null) {
    return header('location: cart.php');
}

// Mendapatkan data pesanan dari formulir
date_default_timezone_set('Asia/Jakarta');
$tanggal_pesanan     = date("Y-m-d");
$id_pesanan          = generateUniqueCode();
$total_harga_pesanan = $cart_total < 100000 ? $cart_total + 50000 : $cart_total;

// Memulai transaksi database
mysqli_autocommit($koneksi, false);
$query_success = true;

// Memasukkan data pesanan ke dalam database
$query = mysqli_query($koneksi, "INSERT INTO tb_pesanan(id_pesanan,nama_pesanan,alamat_pesanan,no_hp_pesanan,email_pesanan,total_harga_pesanan,status_pesanan,tanggal_pesanan,jenis_pembayaran) values('$id_pesanan','$nama_pesanan','$alamat_pesanan','$no_hp_pesanan','$email_pesanan','$total_harga_pesanan','Menunggu Pembayaran','$tanggal_pesanan','$jenis_pembayaran')");

if (!$query) {
    $query_success = false;
}

// Mengambil detail barang dari keranjang dan memasukkannya ke dalam database
$keys       = implode(', ', array_keys($cart));
$query_cart = mysqli_query($koneksi, "SELECT * FROM tb_barang WHERE id_barang IN ($keys)");

while ($keranjang = mysqli_fetch_array($query_cart)) {
    $jumlah_pesanan = $cart[$keranjang['id_barang']];
    $id_barang      = $keranjang['id_barang'];
    $subtotal_harga = $keranjang['harga_barang'] * $jumlah_pesanan;

    $update_stok      = mysqli_query($koneksi, "UPDATE tb_barang SET stok_barang = stok_barang - '$jumlah_pesanan' WHERE id_barang = '$id_barang'");
    $update_keranjang = mysqli_query($koneksi, "INSERT INTO tb_detail_pesanan(id_pesanan,id_barang,jumlah_pesanan,subtotal_harga) VALUES ('$id_pesanan', '$id_barang', '$jumlah_pesanan', '$subtotal_harga')");

    if (!$update_stok || !$update_keranjang) {
        $query_success = false;
    }
}

// Menyelesaikan transaksi database
if ($query_success) {
    mysqli_commit($koneksi);
    mysqli_autocommit($koneksi, true);
    $_SESSION['cart'] = [];

    echo '<script>alert("Pesanan berhasil dibuat"); document.location="status.php?s=' . $id_pesanan . '";</script>';
} else {
    mysqli_rollback($koneksi);
    mysqli_autocommit($koneksi, true);
    echo '<script>alert("Kesalahan! mohon coba lagi!"); document.location="checkout.php";</script>';
}
?>

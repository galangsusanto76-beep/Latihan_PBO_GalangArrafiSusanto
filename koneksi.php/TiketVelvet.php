<?php
require_once 'Tiket.php';

class TiketVelvet extends Tiket {
    private $bantalSelimutPack;
    private $layananButler;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket, $bantalSelimutPack, $layananButler) {
        parent::__construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket);
        $this->bantalSelimutPack = $bantalSelimutPack;
        $this->layananButler = $layananButler;
    }

    // Overriding: Surcharge/Biaya tambahan 50% (dikali 1.50) [cite: 33, 34]
    public function hitungTotalHarga() {
        return ($this->jumlah_kursi * $this->harga_dasar_tiket) * 1.50;
    }

    // Overriding: Menampilkan spesifikasi khusus Velvet
    public function tampilkanInfoFasilitas() {
        return "Bantal-Selimut: " . $this->bantalSelimutPack . " | Butler: " . $this->layananButler;
    }
}
?>
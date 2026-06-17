<?php
require_once 'Tiket.php';

class TiketRegular extends Tiket {
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket, $tipeAudio, $lokasiBaris) {
        // Memanggil constructor milik class induk
        parent::__construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket);
        $this->tipeAudio = $tipeAudio;
        $this->lokasiBaris = $lokasiBaris;
    }

    // Overriding: Tarif standar murni [cite: 30]
    public function hitungTotalHarga() {
        return $this->jumlah_kursi * $this->harga_dasar_tiket;
    }

    // Overriding: Menampilkan spesifikasi khusus Regular
    public function tampilkanInfoFasilitas() {
        return "Audio: " . $this->tipeAudio . " | Baris Kursi: " . $this->lokasiBaris;
    }
}
?>
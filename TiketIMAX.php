<?php
require_once 'Tiket.php';

class TiketIMAX extends Tiket {
    private $kacamata3dId;
    private $efekGerakFitur;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket, $kacamata3dId, $efekGerakFitur) {
        parent::__construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket);
        $this->kacamata3dId = $kacamata3dId;
        $this->efekGerakFitur = $efekGerakFitur;
    }

    // Overriding: Biaya tambahan Rp 35.000 [cite: 31, 32]
    public function hitungTotalHarga() {
        return ($this->jumlah_kursi * $this->harga_dasar_tiket) + 35000;
    }

    // Overriding: Menampilkan spesifikasi khusus IMAX
    public function tampilkanInfoFasilitas() {
        return "Kacamata ID: " . $this->kacamata3dId . " | Efek Gerak: " . $this->efekGerakFitur;
    }
}
?>
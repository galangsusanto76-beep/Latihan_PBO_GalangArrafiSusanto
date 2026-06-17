<?php
abstract class Tiket {
    // Properti Terenkapsulasi (protected) sesuai instruksi [cite: 19]
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $harga_dasar_tiket;

    public function __construct($id_tiket, $nama_film, $jadwal_tayang, $jumlah_kursi, $harga_dasar_tiket) {
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->harga_dasar_tiket = $harga_dasar_tiket;
    }

    // Getter Method (Diperlukan agar kelas luar/View dapat membaca data protected)
    public function getIdTiket() { return $this->id_tiket; }
    public function getNamaFilm() { return $this->nama_film; }
    public function getJadwalTayang() { return $this->jadwal_tayang; }
    public function getJumlahKursi() { return $this->jumlah_kursi; }
    public function getHargaDasar() { return $this->harga_dasar_tiket; }

    // Metode Abstrak wajib tanpa isi/body [cite: 21]
    abstract public function hitungTotalHarga();
    abstract public function tampilkanInfoFasilitas();
}
?>
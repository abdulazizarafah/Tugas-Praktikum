class Hewan {
  String nama;
  int berat;

  Hewan(this.nama, this.berat);
}

class Mobil {
  int kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (totalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print("${hewan.berat} kg ${hewan.nama} ditambahkan ke muatan mobil.");
    } else {
      print(
          "Kapasitas muatan mobil penuh, ${hewan.nama} tidak dapat ditambahkan.");
    }
  }

  int totalMuatan() {
    int total = 0;
    for (Hewan hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

void main() {
  Mobil mobil = Mobil(1000);
  print("Kapasitas Max Mobil: ${mobil.kapasitas} kg");
  print("===========================================");
  Hewan ayam = Hewan("ayam", 300);
  Hewan kambing =
      Hewan("kambing", 500);
  Hewan sapi = Hewan("sapi", 200);

  mobil.tambahMuatan(ayam);
  mobil.tambahMuatan(kambing);
  mobil.tambahMuatan(sapi);

  int totalMuatanMobil = mobil.totalMuatan();
  print("Total muatan mobil: $totalMuatanMobil kg");
}

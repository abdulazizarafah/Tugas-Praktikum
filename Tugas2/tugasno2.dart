Future<List<int>> multiplyList(List<int> data, int pengali) async {
  List<int> hasil = [];

  await Future.forEach(data, (int elemen) async {
    int hasilPerulangan = elemen * pengali;
    hasil.add(hasilPerulangan);
  });

  return hasil;
}

void main() async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> hasil = await multiplyList(data, pengali);

  print("List data asli: $data");
  print("Hasil perkalian dengan pengali $pengali: $hasil");
}

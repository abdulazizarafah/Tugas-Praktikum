void main() {
  
  String nama = "AbdulAziz, ";
  String npm  = "5520121079, ";
  String kelas = "IFC21";

  String gabung = nama+npm+kelas;
  print("1. [$gabung]");

  //dengan menggunakan list
  List<String> data = ["AbdulAziz, ", "5520121079, ", "IFC21"];
  String hasil = data.join();
  print("2. [$hasil]");

}

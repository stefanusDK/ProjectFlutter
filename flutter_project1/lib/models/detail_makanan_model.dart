class ReviewModel {
  String nama;
  String ulasan;
  int bintang;

  ReviewModel({
    required this.nama,
    required this.ulasan,
    required this.bintang,
  });
}

class DetailMakananModel {
  String gambar;
  String deskripsi;
  double rating;
  List<ReviewModel> reviews;

  DetailMakananModel({
    required this.gambar,
    required this.deskripsi,
    required this.rating,
    required this.reviews,
  });
}
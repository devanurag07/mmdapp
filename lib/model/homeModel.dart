class DoctorModel {
  late List name;
  late List ranking;
  late List time;
  late List category;
  late List url;

  DoctorModel({
    required this.name,
    required this.ranking,
    required this.time,
    required this.category,
    required this.url,
  });
}

class CategoryModel {
  late List title;
  late List url;
  late List color;

  CategoryModel({
    required this.title,
    required this.url,
    required this.color,
  });
}

class SummaryModel {
  late String date;
  late String time;
  late String fee1;
  late String fee2;

  SummaryModel({
    required this.date,
    required this.time,
    required this.fee1,
    required this.fee2,
  });
}

class Category {
  String thumbnail;
  String name;
  String lessonName;

  Category({
    required this.name,
    required this.lessonName,
    required this.thumbnail,
  });
}

ontap() {}
List<Category> categoryList = [
  Category(
    name: 'الدرس الثاني',
    lessonName: "تضاعف DNA",
    thumbnail: 'assets/icons/lesson22.jfif',
  ),
  Category(
    name: 'الدرس الأول',
    lessonName: "المادة الوراثية: DNA",
    thumbnail: 'assets/icons/lesson1.jpg',
  ),
  Category(
    name: 'الدرس الرابع',
    lessonName: "التنظيم الجيني والطفرة",
    thumbnail: 'assets/icons/lesson4.jpg',
  ),
  Category(
    name: 'الدرس الثالث',
    lessonName: "DNA ، RNA ، Protein",
    thumbnail: 'assets/icons/lesson3.jpg',
  ),
];

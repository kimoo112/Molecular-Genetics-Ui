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
    thumbnail: 'assets/Slides/2/Slide1.PNG',
  ),
  Category(
    name: 'الدرس الأول',
    lessonName: "المادة الوراثية: DNA",
    thumbnail: 'assets/Slides/1/Slide1.PNG',
  ),
  Category(
    name: 'الدرس الرابع',
    lessonName: "التنظيم الجيني والطفرة",
       thumbnail: 'assets/Slides/4/Slide1.PNG',

  ),
  Category(
    name: 'الدرس الثالث',
    lessonName: "DNA ، RNA ، Protein",
       thumbnail: 'assets/Slides/3/Slide1.PNG',

  ),
];

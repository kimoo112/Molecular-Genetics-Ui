class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "quiz",
    completedPercentage: .50,
    name: " التقويم القبلي",
    thumbnail: "assets/icons/quiz.png",
  ),
  Course(
    author: "DNA : The Genetic Material",
    completedPercentage: .10,
    name: "الدرس الأول ",
    thumbnail: "assets/icons/DNA  The Genetic Material.jpg",
  ),
  Course(
    author: "Replication of DNA",
    completedPercentage: .20,
    name: "الدرس الثاني ",
    thumbnail: "assets/icons/lesson 2.jpg",
  ),
  Course(
    author: "DNA, RNA, and Protein",
    completedPercentage: .30,
    name: "الدرس الثالث ",
    thumbnail: "assets/icons/DRP.png",
  ),
  Course(
    author: "Gene Regulation and Mutation",
    completedPercentage: .10,
    name: "الدرس الرابع",
    thumbnail: "assets/icons/lesson2.jpg",
  ),
  Course(
    author: "quiz",
    completedPercentage: .50,
    name: "التقويم البعدي",
    thumbnail: "assets/icons/quiz.png",
  ),
  // Course(
  //   author: "DevWheels",
  //   completedPercentage: .75,
  //   name: "Node - The complete guide",
  //   thumbnail: "assets/icons/DNA  The Genetic Material.jpg",
  // ),
  // Course(
  //   author: "DevWheels",
  //   completedPercentage: .75,
  //   name: "Node - The complete guide",
  //   thumbnail: "assets/icons/DNA  The Genetic Material.jpg",
  // ),
  // Course(
  //   author: "DevWheels",
  //   completedPercentage: .75,
  //   name: "Node - The complete guide",
  //   thumbnail: "assets/icons/DNA  The Genetic Material.jpg",
  // ),
  // Course(
  //   author: "DevWheels",
  //   completedPercentage: .75,
  //   name: "Node - The complete guide",
  //   thumbnail: "assets/icons/DNA  The Genetic Material.jpg",
  // ),
];

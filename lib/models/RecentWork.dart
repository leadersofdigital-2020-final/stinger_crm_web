class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Евгений Жданов",
    category: "Проектный менеджер",
    image: "assets/images/work_1.jpg",
  ),
  RecentWork(
    id: 2,
    title: "Фам Минь Дык",
    category: "Flutter разработчик",
    image: "assets/images/work_2.jpg",
  ),
  RecentWork(
    id: 3,
    title: "Алексей Сенников",
    category: "Гигант мысли",
    image: "assets/images/work_3.jpg",
  ),
  RecentWork(
    id: 4,
    title: "Пашок Ивин",
    category: "Python разработчик",
    image: "assets/images/work_4.jpg",
  ),
];
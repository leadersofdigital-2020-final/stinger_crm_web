class PlanetInfo {
  final int position;
  final String name;
  final String name2;
  final String iconImage;
  final String description;
  final List<String> images;
  final List<String> images2;

  PlanetInfo(
      this.position, {
        this.name,
        this.name2,
        this.iconImage,
        this.description,
        this.images,
        this.images2
      });
}

List<String> descriptions = [
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
];

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Город',
      name2: 'Введите город',
      iconImage: 'assets/city.png',
      description:
      "Не указано",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ]),
  PlanetInfo(2,
      name: 'Название вакансии',
      name2: 'Введите название вакансии',
      iconImage: 'assets/python_logo.png',
      description:
      "Не указано",
      images: [
        'assets/images/python.png',
        'assets/testing.png',
        'assets/images/js.png',
        'assets/frontend.png'
      ],
      images2: [
        'Программист Python',
        'Программист-тестировщик',
        'Программист JS',
        'Frontend Developer'
      ]
  ),
  PlanetInfo(3,
      name: 'Тип занятости',
      name2: 'Выберите блоки',
      iconImage: 'assets/time.png',
      description:
      "Не указано",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  PlanetInfo(4,
      name: 'График работы',
      name2: 'Выберите блоки',
      iconImage: 'assets/chart.png',
      description:
      "Не указано",
      images: []),
  PlanetInfo(5,
      name: 'Образование',
      name2: 'Выберите факультет и направление',
      iconImage: 'assets/education.png',
      description:
      "Не указано",
      images: [
      ]),
  PlanetInfo(6,
      name: 'Ключевые навыки',
      name2: 'Введите всё, что посчитаете нужным',
      iconImage: 'assets/react.png',
      description:
      "Не указано",
      images: [
        "assets/images/python.png",
        "assets/tcpip.png",
        "assets/git.png"
      ],
      images2: [
        "Python",
        "TCP/IP стэк",
        "Git"
      ]
  ),
  PlanetInfo(7,
      name: 'Заработная плата',
      name2: 'Выберите минимальную зарплату',
      iconImage: 'assets/money.png',
      description:
      "Не указано",
      images: []),
  PlanetInfo(8,
      name: 'Условия работы',
      name2: 'Ничего не вводите, просто скролльте готовые блоки и отмечайте их галочками',
      iconImage: 'assets/interview.png',
      description:
      "Не указано",
      images: [
        "assets/social.png",
        "assets/medical.png",
        "assets/office.png",
        "assets/car.png",
        "assets/agile.png",
        "assets/gym.png"
      ],
    images2: [
      "Социальный пакет",
      "ДМС",
      "Офис А класса",
      "Наличие парковки",
      "Agile подход",
      "Спортзал"
    ],
  ),
  PlanetInfo(9,
      name: 'Требования',
      name2: 'Вводите текстом, либо отмечайте галочками',
      iconImage: 'assets/Java_logo.png',
      description:
      "Не указано",
      images: [
        "assets/images/python.png",
        "assets/sql.png"
      ],
    images2: [
      "Знание Python",
      "Знание SQL"
    ]
  ),
  PlanetInfo(10,
      name: 'Задачи',
      name2: 'Введите текстом',
      iconImage: 'assets/task.png',
      description:
      "Не указано",
      images: []),
  PlanetInfo(11,
      name: 'Вопросы',
      name2: 'Введите текстом',
      iconImage: 'assets/question.png',
      description:
      "Не указано",
      images: []),
];
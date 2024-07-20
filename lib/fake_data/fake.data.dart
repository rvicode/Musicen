class CategoryData {
  final String name;
  final String image;

  CategoryData({required this.name, required this.image});
}

class ReleaseData {
  final String name;
  final String category;
  final String music;
  final String image;

  ReleaseData({
    required this.name,
    required this.category,
    required this.music,
    required this.image,
  });
}

class PlayListyData {
  final String name;
  final int count;
  final String image;

  PlayListyData({
    required this.name,
    required this.count,
    required this.image,
  });
}

class AppDatabase {
  static List<ReleaseData> get releaseData {
    return [
      ReleaseData(
        name: 'El Dollop',
        category: 'Sonoro | All Things Comedy',
        image: 'assets/images/mix1.png',
        music: 'null',
      ),
      ReleaseData(
        name: 'Caso 63',
        category: 'Spotify Studios',
        image: 'assets/images/mix2.png',
        music: 'null',
      ),
      ReleaseData(
        name: 'TED en Español',
        category: 'TED',
        image: 'assets/images/mix3.png',
        music: 'null',
      ),
    ];
  }

  static List<PlayListyData> get playlistyDataData {
    return [
      PlayListyData(
          name: 'Uncovered - Robin Schulz',
          count: 18,
          image: 'assets/images/category1.png'),
      PlayListyData(
          name: 'Origins (Deluxe) - Imagine Dragons',
          count: 16,
          image: 'assets/images/category2.png'),
      PlayListyData(
          name: 'So Far Away (feat. Jamie Scott & Romy',
          count: 1,
          image: 'assets/images/category3.png'),
      PlayListyData(
          name: 'Forever - Martin Garrix, Matisse & Sadko',
          count: 8,
          image: 'assets/images/category4.png'),
    ];
  }

  static List<CategoryData> get categories {
    return [
      CategoryData(image: 'assets/images/categories1.png', name: 'Low'),
      CategoryData(image: 'assets/images/categories2.png', name: 'Involved'),
      CategoryData(image: 'assets/images/categories3.png', name: 'Rap'),
    ];
  }
}






  import 'dart:math';

String randomUber() {
    int n = 1 + Random().nextInt(100);

    return n.toString();
  }

 String sampleimage =  "https://picsum.photos/200/300?random=${randomUber()}";
 const String defaultsample =  "https://picsum.photos/200/300";




class AssetV1 {


  static String imagePath(String image) {
    return 'assets/images/v1/$image';
  }

  static const bannerDefault =
      'https://thumbs.dreamstime.com/b/abstract-stained-pattern-rectangle-background-blue-sky-over-fiery-red-orange-color-modern-painting-art-watercolor-effe-texture-123047399.jpg';
  static const avatarDefault =
      'https://external-preview.redd.it/5kh5OreeLd85QsqYO1Xz_4XSLYwZntfjqou-8fyBFoE.png?auto=webp&s=dbdabd04c399ce9c761ff899f5d38656d1de87c2';
}


String toCamelCase(String text) {
  List<String> words = text.split(' ');

  String result = '';

  for (int i = 0; i < words.length; i++) {
    String word = words[i];

    if (i == 0) {
      result += word.toLowerCase();
    } else {
      result += word[0].toUpperCase() + word.substring(1).toLowerCase();
    }
  }

  return result;
}



String capitalize(String name) {
  List<String> words = name.split(' ');

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toUpperCase() + word.substring(1);
    }
  }

  return words.join(' ');
}
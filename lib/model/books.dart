
class Books {
  String title;
  String description;
  String imageAsset;
  String category;
  String author;
  String rating;
  String source;

  Books({
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.category,
    required this.rating,
    required this.author,
    required this.source,
  });
}

var books = [
  Books(
    title: 'Atomic Habits',
    /// [description] source google books
    description: 'A supremely practical and useful book. James Clear distils the most fundamental information about habit formation, so you can accomplish more by focusing on less.',
    imageAsset: 'images/atomic-habits.png',
    category: 'self-improvment',
    rating: '5',
    author: 'James clear',
    source: 'Google books'

  ),
  Books(
    title: 'Sapiens',
    /// [description] source wikipedia
    description: 'Sapiens: A Brief History of Humankind is a book by Yuval Noah Harari, first published in Hebrew in Israel in 2011 based on a series of lectures Harari taught at The Hebrew University of Jerusalem, and in English in 2014',
    imageAsset: 'images/sapiens.png',
    category: 'history',
    rating: '4.8',
    author: 'Yuval Noah Harari',
    source: 'Wikipedia'
  ),
  Books(
    title: 'how to win friends and influence',
    /// [description] source wikipedia
    description: 
      'How to Win Friends and Influence People is a 1936 self-help book written by Dale Carnegie. Over 30 million copies have been sold worldwide, making it one of the best-selling books of all time. Carnegie had been conducting business education courses in New York since 1912.',
    imageAsset: 'images/how-to-win.png',
    category: 'finance',
    author: 'Dale Carnegie',
    rating: '4.8',
    source: 'Wikipedia'
  ),
  Books(
    title: 'The Psychology of Money',
    description: 'Berhasil dalam hal uang belum tentu tentang apa yang Anda ketahui. Ini tentang bagaimana Anda berperilaku. Dan perilaku sulit untuk diajarkan, bahkan kepada orang yang sangat pintar sekalipun.',
    imageAsset: 'images/pyshology-money.png',
    category: 'finance',
    rating: '5',
    source: 'Wikipedia',
    author: 'Morgan Housel'
  ),
  Books(
    title: 'The Subtle Art Of Not Giving',
    /// [description] source wikipedia
    description: 'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life adalah buku self-help nonfiksi tahun 2016 yang ditulis oleh blogger dan penulis Amerika, Mark Manson.',
    imageAsset: 'images/the-subtle.png',
    category: 'self improvement',
    rating: '5',
    author: 'Mark Manson',
    source: 'Wikipedia'
  ),
];

var popularBooks = [
  Books(
    title: 'Great at Work',
    /// [description] source gramedia
    description:
      'Kita sering mendengar istilah work smart, tetapi tidak banyak yang tahu maksud yang sebenarnya dari bekerja secara smart. Buku ini akan mengupas tuntas 7 Tips “Work Smarter” yang telah dibuktikan dari riset/survey dan penelitian Morten Hansen dan timnya.',
    imageAsset: 'images/great-work.jpg',
    category: 'psychology',
    rating: '5',
    author: 'Morten T.Hansen',
    source: 'Gramedia'
  ),
  Books(
    title: 'Filosofi Teras',
    description:
      'Lebih dari 2000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turun nya kehidupan',
    imageAsset: 'images/filosofi-teras.jpg',
    category: 'history',
    rating: '5',
    author: 'Henry Manampiring',
    source: 'Gramedia'
  ),
  Books(
    title: 'Tuhan Aku Tetap Ingin Hidup',
    description: 
      'Tuhan, Aku Ingin Tetap Hidup: Spinal Cord Injury Melumpuhkan Kakiku merupakan buku yang akan menggugah kesadaran dan keimanan kita. Ini tentang bagaimana kedamaian hati membuat kita bisa bangkit dari keterpurukan dan mampu bertahan dengan menerima kondisi yang ada.',
    imageAsset: 'images/aku-ingin.jpeg',
    category: 'history',
    rating: '4.6',
    author: 'Reinhard Damopolli',
    source: 'Gramedia'
  ),
];
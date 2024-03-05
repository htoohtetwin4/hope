import 'package:hope_app/models/Products.dart';
import 'package:hope_app/models/Videoes.dart';

class Hproducts {
  static List<Product> allProducts = [
    Product(
        id: 1,
        name: 'Product 1',
        category: 'New',
        image: 'assets/images/product1.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 2,
        name: 'Product 2',
        category: 'New',
        image: 'assets/images/product2.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 3,
        name: 'Product 3',
        category: 'Used',
        image: 'assets/images/product3.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 4,
        name: 'Product 4',
        category: 'Used',
        image: 'assets/images/product9.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 5,
        name: 'Product 5',
        category: 'Used',
        image: 'assets/images/product8.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 6,
        name: 'Product 6',
        category: 'Used',
        image: 'assets/images/product4.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
  ];

  static List<Product> NewProducts = [
    Product(
        id: 1,
        name: 'NProduct 1',
        category: 'New',
        image: 'assets/images/product5.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 2,
        name: 'NProduct 2',
        category: 'New',
        image: 'assets/images/product6.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 3,
        name: 'NProduct 3',
        category: 'Used',
        image: 'assets/images/product7.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 4,
        name: 'NProduct 4',
        category: 'Used',
        image: 'assets/images/product3.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
  ];
  static List<Product> usedProducts = [
    Product(
        id: 1,
        name: 'UProduct 1',
        category: 'New',
        image: 'assets/images/product1.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 2,
        name: 'UProduct 2',
        category: 'New',
        image: 'assets/images/product2.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 3,
        name: 'UProduct 3',
        category: 'Used',
        image: 'assets/images/product3.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
    Product(
        id: 4,
        name: 'UProduct 4',
        category: 'Used',
        image: 'assets/images/product4.jpg',
        description: "The latest model with advanced features.",
        price: 1000.00,
        quantity: 1),
  ];
}

class VideoCardData {
  static List<Video> videoData = [
    Video(
      id: 1,
      title: 'Video One',
      favourite: true,
      time: '30 min',
      thumbnail: 'assets/images/movie_demo.jpg',
    ),
    Video(
      id: 2,
      title: 'Video Two',
      favourite: false,
      time: '30 min',
      thumbnail: 'assets/images/movie_demo1.jpg',
    ),
    Video(
      id: 3,
      title: 'Video Three',
      favourite: true,
      time: '30 min',
      thumbnail: 'assets/images/movie_demo2.jpg',
    ),
    Video(
      id: 4,
      title: 'Video Four',
      favourite: false,
      time: '30 min',
      thumbnail: 'assets/images/movie_demo3.jpg',
    ),
    Video(
      id: 5,
      title: 'Video Five',
      favourite: true,
      time: '30 min',
      thumbnail: 'assets/images/movie_demo4.jpg',
    ),
    Video(
      id: 6,
      title: 'Video Six',
      favourite: true,
      time: '30 min',
      thumbnail: 'assets/images/movie_demo5.jpg',
    ),
  ];
}

// class Video {
//   final int id;
//   final String title;
//   final bool favorite;
//   final String time;
//   final String thumbnail;

//   Video({
//     required this.id,
//     required this.title,
//     required this.favorite,
//     required this.time,
//     required this.thumbnail,
//   });
// }


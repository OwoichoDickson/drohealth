import 'package:drohealth/imports/imports.dart';

List populars = [
  {
    "image":
        "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/91/511658/1.jpg?9807",
    "name": "Emzor",
    "price": "N2050",
    "description": "Capsule",
    "miligram": "500",
  },
  {
    "image":
        "https://images.heb.com/is/image/HEBGrocery/002045362?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0",
    "name": "Panadol",
    "price": "N300",
    "description": "Tablet",
    "miligram": "500",
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/61YNU7BSZwL._AC_SL1000_.jpg",
    "name": "Ibuprofen",
    "price": "N950",
    "description": "Tablet",
    "miligram": "500",
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/61YNU7BSZwL._AC_SL1000_.jpg",
    "name": "Ibuprofen",
    "price": "N950",
    "description": "Tablet",
    "miligram": "500",
  },
];

const List featured = [
  {
    "image":
        "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Head Ache",
    
  },
  {
    "image":
        "https://images.unsplash.com/photo-1543339308-43e59d6b73a6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Fever",
    
  },
  {
    "image":
        "https://images.unsplash.com/photo-1511909525232-61113c912358?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Infants",
    
  },
  
  {
    "image":
        "https://images.unsplash.com/photo-1511909525232-61113c912358?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "Cough",
    
  },
];


class CartItem{
  final String image;
  final String description;
  final String name;
  final String prize;
  final String miligram;
  
  CartItem({required this.image,required this.description, required this.name, required this.miligram,required this.prize});

factory CartItem.fromMap(Map json){
  return CartItem(image:json['image'], description:json['description'],name: json['name'],miligram:json['miligram'],prize:json['prize']);
}
}


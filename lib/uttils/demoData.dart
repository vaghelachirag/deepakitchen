
// It contains all our demo data that we used
import 'package:flutter/material.dart';

import 'constants.dart';

final List<String> demoRestaurantNames = [
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง",
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน",
  "ไก่ทอด ลุงพล ป้าแต๋น",
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ",
  "ไก่ทอดข้างทาง อุุดหนุนป้าหน่อย",
  "ควยหีแตด"
  // Add more restaurant names here as needed
];

final Map<String, String> restaurantImages = {
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง": "assets/images/ไก่ทอดซอสหัวหอม.png",
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน": "assets/images/ลาบไก่ทอด.jpg",
  "ไก่ทอด ลุงพล ป้าแต๋น": "assets/images/ปีกไก่ทอด.jpg",
  "ไก่ทอดร้านนี้ กินแล้วรวย สวยหล่อ": "assets/images/ข้าวเหนียวไก่ทอด.png",
  "ควยหีแตด": "assets/images/ไก่ทอดหน้าโรงเรียน.jpg"
  // Add more restaurant names and images here as needed
};

List<String> demoBigImages = [
  "assets/images/ไก่ทอดซอสหัวหอม.png",
  "assets/images/ลาบไก่ทอด.jpg",
  "assets/images/ปีกไก่ทอด.jpg",
  "assets/images/ข้าวเหนียวไก่ทอด.png",
  "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
  "assets/images/ไก่ทอดสับ.jpg",
  "assets/images/ข้าวเหนียวไก่ทอด.png",
  "assets/images/ไก่ทอดคาราอาเกะ.jpg",
  "assets/images/ไก่ทอดบ้านๆ.jpg"
];


// Assuming you have a map of categories and their items
Map<int, List<Map<String, dynamic>>> categoryItems = {
  0: [ {
    "name": "Cheese Handvo",
    "quantity": "100 Gm",
    "image": "assets/images/cheesehandvo.png",
    "location": "₹ 50",
    "rating": 8.6,
    "delivertTime": 20,
  },
    {
      "name": "Puri Bhaji",
      "quantity": "5 Piece",
      "image": "assets/images/puribhaji.jpg",
      "location": "₹ 80",
      "rating": 9.1,
      "delivertTime": 35,
    },
    {
      "name": "Ghughra",
      "quantity": "2 Piece",
      "image": "assets/images/ghughra.jpg",
      "location": "₹ 50",
      "rating": 7.3,
      "delivertTime": 25,
    },
    {
      "name": "Dhokla",
      "quantity": "100 Gm",
      "image": "assets/images/dhokla.jpg",
      "location": "₹ 50",
      "rating": 8.4,
      "delivertTime": 30,
    },
    {
      "name": "Methi Thepla",
      "quantity": "2 Piece",
      "image": "assets/images/methithepla.png",
      "location": "₹ 25",
      "rating": 9.5,
      "delivertTime": 15,
    },{
      "name": "Methi Thepla",
      "quantity": "2 Piece",
      "image": "assets/images/methithepla.png",
      "location": "₹ 25",
      "rating": 9.5,
      "delivertTime": 15,
    },
    {
      "name": "Methi Thepla",
      "quantity": "2 Piece",
      "image": "assets/images/methithepla.png",
      "location": "₹ 25",
      "rating": 9.5,
      "delivertTime": 15,
    } ],
  1: [{
    "name": "Methi Masala Thepla",
    "quantity": "3 piece",
    "image": "${categoryImagePath}methi_thepla.png",
    "location": "₹ 50",
    "rating": 8.6,
    "delivertTime": 20,
  },
    {
      "name": "Butter Thepla",
      "quantity": "5 Piece",
      "image": "${categoryImagePath}methi_thepla.png",
      "location": "₹ 80",
      "rating": 9.1,
      "delivertTime": 35,
    },
    {
      "name": "Thepla with Suki Bhaji and Dahi",
      "quantity": "2 Piece",
      "image": "${categoryImagePath}thepla_sukibhaji.jpg",
      "location": "₹ 50",
      "rating": 7.3,
      "delivertTime": 25,
    },
    {
      "name": "Thepla Sandwich with Mayo",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}thepla_sandwith.png",
      "location": "₹ 50",
      "rating": 8.4,
      "delivertTime": 30,
    },
    {
      "name": "Thepla Pizza",
      "quantity": "2 Piece",
      "image": "${categoryImagePath}thepla_pizza.png",
      "location": "₹ 25",
      "rating": 9.5,
      "delivertTime": 15,
    },
    {
      "name": "Beetroot Thepla",
      "quantity": "3 Piece",
      "image": "${categoryImagePath}barror_thepla.png",
      "location": "₹ 60.00",
      "rating": 9.5,
      "delivertTime": 15,
    }, {
      "name": "Paneer Thepla",
      "quantity": "3 Piece",
      "image": "${categoryImagePath}panner_thepla.png",
      "location": "₹ 60.00",
      "rating": 9.5,
      "delivertTime": 15,
    },
  ],
  2: [ {
    "name": "Khaman Naylon",
    "quantity": "100 Gm",
    "image": "${categoryImagePath}khaman.png",
    "location": "₹50.00",
    "rating": 8.6,
    "delivertTime": 20,
  },
    {
      "name": "Dhokla",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}dhokala_yellow.png",
      "location": "₹50.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Rava Dhokla",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}rava_dhokla.jpg",
      "location": "₹60.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Handvo",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}handvo.png",
      "location": "₹60.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Cheese Handvo",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}cheese_handvo.png",
      "location": "₹80.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Vatidal Khaman",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}vatidal_khaman.png",
      "location": "₹80.00",
      "rating": 8.6,
      "delivertTime": 20,
    }
    ],
  3: [ {
    "name": "Khaman Naylon",
    "quantity": "100 Gm",
    "image": "${categoryImagePath}khaman.png",
    "location": "₹50.00",
    "rating": 8.6,
    "delivertTime": 20,
  },
    {
      "name": "Dhokla",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}dhokala_yellow.png",
      "location": "₹50.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Rava Dhokla",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}rava_dhokla.jpg",
      "location": "₹60.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Handvo",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}handvo.png",
      "location": "₹60.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Cheese Handvo",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}cheese_handvo.png",
      "location": "₹80.00",
      "rating": 8.6,
      "delivertTime": 20,
    },
    {
      "name": "Vatidal Khaman",
      "quantity": "100 Gm",
      "image": "${categoryImagePath}vatidal_khaman.png",
      "location": "₹80.00",
      "rating": 8.6,
      "delivertTime": 20,
    }
  ],
  4: [ {
    "name": "Moong Sprouts",
    "quantity": "100 Gm",
    "image": "${categoryImagePath}sprouts.png",
    "location": "₹50.00",
    "rating": 8.6,
    "delivertTime": 20,
  }
  ],
  5: [ {
    "name": "Curd",
    "quantity": "100 Gm",
    "image": "${categoryImagePath}curd.png",
    "location": "₹50.00",
    "rating": 8.6,
    "delivertTime": 20,
  },{
    "name": "Chas",
    "quantity": "100 ML",
    "image": "${categoryImagePath}chaas.png",
    "location": "₹50.00",
    "rating": 8.6,
    "delivertTime": 20,
  }, {
"name": "Green Chutney",
"quantity": "1 Pouch",
"image": "${categoryImagePath}green_chutney.png",
"location": "₹50.00",
"rating": 8.6,
"delivertTime": 20,
}
  ]
};


List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "Cheese Handvo",
    "quantity": "100 Gm",
    "image": "assets/images/cheesehandvo.png",
    "location": "₹ 50",
    "rating": 8.6,
    "delivertTime": 20,
  },
  {
    "name": "Puri Bhaji",
    "quantity": "5 Piece",
    "image": "assets/images/puribhaji.jpg",
    "location": "₹ 80",
    "rating": 9.1,
    "delivertTime": 35,
  },
  {
    "name": "Ghughra",
    "quantity": "2 Piece",
    "image": "assets/images/ghughra.jpg",
    "location": "₹ 50",
    "rating": 7.3,
    "delivertTime": 25,
  },
  {
    "name": "Dhokla",
    "quantity": "100 Gm",
    "image": "assets/images/dhokla.jpg",
    "location": "₹ 50",
    "rating": 8.4,
    "delivertTime": 30,
  },
  {
    "name": "Methi Thepla",
    "quantity": "2 Piece",
    "image": "assets/images/methithepla.png",
    "location": "₹ 25",
    "rating": 9.5,
    "delivertTime": 15,
  },{
    "name": "Methi Thepla",
    "quantity": "2 Piece",
    "image": "assets/images/methithepla.png",
    "location": "₹ 25",
    "rating": 9.5,
    "delivertTime": 15,
  },
  {
    "name": "Methi Thepla",
    "quantity": "2 Piece",
    "image": "assets/images/methithepla.png",
    "location": "₹ 25",
    "rating": 9.5,
    "delivertTime": 15,
  }
];


List categories = [
  {"name": "All", "icon": Icons.rice_bowl},
  {"name": "Thepla", "icon": Icons.rice_bowl},
  {"name": "Gujarati Cuisine", "icon": Icons.rice_bowl},
  {"name": "Evening", "icon": Icons.rice_bowl},
  {"name": "Healthy", "icon": Icons.rice_bowl},
  {"name": "Extras", "icon": Icons.rice_bowl},
];


List<Map<String, dynamic>>  foodCategories = [
  {
    'id': 'category_1',
    'name': 'Pizza',
    'imageUrl': 'assets/images/pizza.png',
  },
  {
    'id': 'category_2',
    'name': 'Burgers',
    'imageUrl': 'assets/images/burger.png',
  },
  {
    'id': 'category_3',
    'name': 'Sushi',
    'imageUrl': 'assets/images/sushi.png',
  },
  {
    'id': 'category_4',
    'name': 'Dessert',
    'imageUrl': 'assets/images/cake.png',
  },
  {
    'id': 'category_5',
    'name': 'Fast Food',
    'imageUrl': 'assets/images/fries.png',
  },
];

final Map<String, List<Map<String, dynamic>>> restaurantMenu = {
  "บ้านไก่เกาหลี อร่อยกว่าบอนชอน": [
    {
      "name": "ไก่ทอดคลุกซอสเกาหลี",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ไก่ทอดคลุกซอสเกาหลี.png",
      "foodType": "ไก่ทอด",
      "price": 0,
      "priceRange": "\$ \$",
    },
    {
      "name": "ข้าวมันไก่",
      "location": "อโศก, กรุงเทพ",
      "image": "assets/images/ข้าวหมกไก่ทอด.png",
      "foodType": "ข้าวมันไก่",
      "price": 0,
      "priceRange": "\$ \$",
    },
    // เมนูอาหารอื่นๆ ของร้าน "บ้านไก่เกาหลี อร่อยกว่าบอนชอน" ไปต่อที่นี่
  ],
  "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง": [
    {
      "name": "ไก่ทอดหาดใหญ่",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ไก่ทอดหาดใหญ่.png",
      "foodType": "ไก่ทอด",
      "price": 0,
      "priceRange": "\$ \$",
    },
    {
      "name": "ข้าวมันไก่",
      "location": "นานา, กรุงเทพ",
      "image": "assets/images/ข้าวหมกไก่ทอด.png",
      "foodType": "ข้าวมันไก่",
      "price": 0,
      "priceRange": "\$ \$",
    },
    // เมนูอาหารอื่นๆ ของร้าน "ไก่ทอด หาดหย่าย สูตรเด็ด เจ้าดัง" ไปต่อที่นี่
  ],
  // เพิ่มร้านอื่นๆ และเมนูอาหารของแต่ละร้านตามต้องการได้ที่นี่
};

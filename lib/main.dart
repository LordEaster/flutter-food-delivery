import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> account = {
      'name': 'Natnawat Panisarasirikul',
      'balance': 20000,
    };

    List<Map<String, dynamic>> popularMenu = [
      {
        'name': 'Hamburger',
        'price': 100,
        'image': 'https://foodish-api.com/images/burger/burger60.jpg',
        'description': 'Hamburger with beef, cheese, and vegetables',
        'rating': 4.5,
      },
      {
        'name': 'Pizza',
        'price': 200,
        'image': 'https://foodish-api.com/images/pizza/pizza14.jpg',
        'description': 'Pizza with cheese, tomato, and ham',
        'rating': 4.5,
      },
      {
        'name': 'Samosa',
        'price': 50,
        'image': 'https://foodish-api.com/images/samosa/samosa18.jpg',
        'description': 'Samosa with potato and curry',
        'rating': 4.5,
      },
      {
        'name': 'Pasta',
        'price': 70,
        'image': 'https://foodish-api.com/images/pasta/pasta28.jpg',
        'description': 'Pasta with tomato sauce and cheese',
        'rating': 4.5,
      }
    ];

    List<Map<String, dynamic>> foodMenus = [
      {
        'name': 'Hamburger',
        'price': 100,
        'image': 'https://foodish-api.com/images/burger/burger1.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Pizza',
        'price': 200,
        'image': 'https://foodish-api.com/images/pizza/pizza1.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Samosa',
        'price': 50,
        'image': 'https://foodish-api.com/images/samosa/samosa1.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Pasta',
        'price': 70,
        'image': 'https://foodish-api.com/images/pasta/pasta1.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Hamburger',
        'price': 100,
        'image': 'https://foodish-api.com/images/burger/burger2.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Pizza',
        'price': 200,
        'image': 'https://foodish-api.com/images/pizza/pizza2.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Samosa',
        'price': 50,
        'image': 'https://foodish-api.com/images/samosa/samosa3.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Pasta',
        'price': 70,
        'image': 'https://foodish-api.com/images/pasta/pasta5.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Hamburger',
        'price': 100,
        'image': 'https://foodish-api.com/images/burger/burger3.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Pizza',
        'price': 200,
        'image': 'https://foodish-api.com/images/pizza/pizza3.jpg',
        'rating': 4.5,
      },
      {
        'name': 'Samosa',
        'price': 50,
        'image': 'https://foodish-api.com/images/samosa/samosa4.jpg',
        'rating': 4.5,
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/34980328?v=4'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('welcome',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          Text(account['name'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.shopping_basket_outlined, color: Colors.black),
                ],
              ),
              backgroundColor: Colors.white),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  // balance section
                  Container(
                    margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Balance',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$${account['balance']}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange[900],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  // popular foods section
                  Container(
                    height: 275,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Popular Foods',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  )),
                              Text('See all',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          height: 225,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: popularMenu.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 175,
                                height: 225,
                                margin: EdgeInsets.only(left: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              popularMenu[index]['image']),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      padding: EdgeInsets.only(
                                          top: 5, left: 5, right: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(popularMenu[index]['name'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          Text(
                                              popularMenu[index]['description'],
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              '\$${popularMenu[index]['price']}',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow[600],
                                                size: 16,
                                              ),
                                              Text(
                                                  '${popularMenu[index]['rating']}',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // food menus section
                  Container(
                    // color: Colors.green,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // search bar
                        Container(
                          padding: EdgeInsets.only(
                              left: 12, right: 12, top: 8, bottom: 8),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.4),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: Colors.grey[400]),
                              Text(
                                "Search Food Menu",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // food menus
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('Food Menus',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              )),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: foodMenus.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 70,
                                            height: 70,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    foodMenus[index]['image']),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(foodMenus[index]['name'],
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                    )),
                                                Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(right: 10),
                                                      child: Text(
                                                          '\$${foodMenus[index]['price']}',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                          )),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.yellow[600],
                                                          size: 16,
                                                        ),
                                                        Text(
                                                            '${foodMenus[index]['rating']}',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 12,
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.orange[900],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

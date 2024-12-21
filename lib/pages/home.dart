import 'package:flutter/material.dart';
import 'package:food_delivery/pages/menu_detail.dart';
import 'package:food_delivery/components/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        'name': 'Padthai (ผัดไทย)',
        'price': 60,
        'image': 'assets/images/Padthai.jpg',
        'rating': 4.5,
        'description': 'Our Pad Thai menu brings the iconic taste of Thailand to your plate. Enjoy the perfect balance of sweet, sour, and savory in stir-fried rice noodles tossed with tamarind sauce, tofu, and fresh bean sprouts. Try our Classic Pad Thai with shrimp for a flavorful twist or go vegetarian with our Tofu Pad Thai, packed with vibrant flavors. Each dish is topped with roasted peanuts and lime for a refreshing finish. A timeless favorite that never disappoints! 🍜',
      },
      {
        'name': 'Somtam (ส้มตำ)',
        'price': 50,
        'image': 'assets/images/Somtam.jpg',
        'rating': 4.5,
        'description': 'Our Som Tum menu brings you the vibrant and irresistible flavors of traditional Thai cuisine, made with the freshest ingredients for an authentic experience. Try the classic Som Tum Thai, a zesty green papaya salad mixed with lime juice, fish sauce, and roasted peanuts, perfectly balancing sweet, sour, and spicy. For those who enjoy a seafood twist, our Som Tum Goong Sod adds juicy fresh shrimp for an extra layer of flavor. Meat lovers will adore Som Tum Kor Moo Yang, pairing the tangy salad with grilled pork neck. For an adventurous palate,  Whatever your preference, our Som Tum is a true delight for your taste buds! 🥗',
      },
      {
        'name': 'Spaghetti (สปาเก็ตตี้)',
        'price': 70,
        'image': 'assets/images/Spaghetti.jpg',
        'rating': 4.5,
        'description': 'Our Spaghetti menu offers a delicious selection of pasta dishes, crafted with high-quality ingredients and bursting with flavor. Enjoy the classic Spaghetti Bolognese, featuring a rich and hearty meat sauce slow-cooked with tomatoes and aromatic herbs, or savor the creamy indulgence of Spaghetti Carbonara, complete with crispy pancetta and a touch of Parmesan. For seafood lovers, our Seafood Spaghetti brings together fresh catches in a light tomato, Spaghetti Aglio e Olio, with its perfect blend of garlic, olive oil, chili flakes, and parsley, is sure to delight. Whatever your taste, our spaghetti dishes are prepared to satisfy and impress. 🍝',
      },
      {
        'name': 'Vegetable salad (สลัดผัก)',
        'price': 40,
        'image': 'assets/images/Vegetable_salad.jpg',
        'rating': 4.5,
        'description': 'Our Vegetable Salad menu features fresh and flavorful options for every taste. Try our Classic Garden Salad, a mix of crisp greens and colorful veggies with a tangy vinaigrette. For a hearty twist, enjoy our Grilled Vegetable Salad, blending smoky zucchini and bell peppers with a balsamic glaze. Craving something unique? Our Sesame Ginger Salad adds an Asian-inspired kick. Each dish is crafted to be healthy, delicious, and satisfying. 🥗',
      },
      {
        'name': 'Pizza hawaiian (พิซซาฮาวาเอี้ยน)',
        'price': 80,
        'image': 'assets/images/Pizza_hawaiian.png',
        'rating': 4.5,
        'description': 'Our Hawaiian Pizza is a tropical delight that combines savory and sweet flavors in every bite. Enjoy a crispy crust topped with rich tomato sauce, melted mozzarella, juicy pineapple chunks, and smoky ham. The perfect balance of sweetness and saltiness makes this pizza a favorite for any occasion. A slice of paradise you won’t want to miss! 🍍🍕',
      },
      {
        'name': 'Bulan Dan Mek (บุหรัน ดั้นเมฆ)',
        'price': 30,
        'image': 'assets/images/Bulan_Dan_Mek.jpg',
        'rating': 4.5,
        'description': 'Our Buran Dan Mek dessert is a heavenly treat inspired by traditional Thai flavors. Soft, fluffy pandan-infused rice flour dumplings are served in a creamy coconut milk sauce, lightly sweetened and topped with a sprinkle of toasted sesame seeds. This delicate and aromatic dessert offers a perfect balance of texture and taste, making it a delightful way to end any meal. 🌿🥥',
      },
    ];

    return Scaffold(
          appBar: CustomAppBar(),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
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
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MenuDetail(
                                          title: foodMenus[index]['name'],
                                          image: foodMenus[index]['image'],
                                          description: foodMenus[index]['description'],
                                          price: foodMenus[index]['price'],
                                          rating: foodMenus[index]['rating'],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
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
                                                  image: Image.asset(
                                                          foodMenus[index]['image'])
                                                      .image,
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
                                                  Container(
                                                    width: 150,
                                                    child: Text(foodMenus[index]['name'],
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                        ), overflow: TextOverflow.ellipsis,),
                                                  ),
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
          )
        );
  }
}
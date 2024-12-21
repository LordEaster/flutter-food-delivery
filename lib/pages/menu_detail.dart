import 'package:flutter/material.dart';
import 'package:food_delivery/components/custom_app_bar.dart';

class MenuDetail extends StatelessWidget {
  const MenuDetail({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
  }) : super(key: key);

  final String title;
  final String description;
  final String image;
  final int price;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 16,
                          ),
                        ),
                        Text(title, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            Text(rating.toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                  )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Image.asset(image).image,
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(description, style: const TextStyle(fontSize: 10),),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text('Price :', style: TextStyle(fontSize: 10))
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text('\$${price}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(child: Text('Add to Cart', style: const TextStyle(color: Colors.white, fontSize: 16))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

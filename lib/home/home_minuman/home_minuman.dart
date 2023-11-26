import 'package:flutter/material.dart';
import 'package:starbhak/home/home_screen.dart';
import 'package:starbhak/home/home_makanan/home.dart';

class HomeMinuman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PreferredSize(
              preferredSize: Size.fromHeight(130.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuItem(
                      'All', 'images/burger.jpg', Colors.white, context),
                  buildMenuItem(
                      'Makanan', 'images/burger.jpg', Colors.white, context),
                  buildMenuItem(
                      'Minuman', 'images/minuman.jpg', Colors.blue, context),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'All Food',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4.0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/minuman.jpg',
                                width: 250,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                              Text('Teh Botol'),
                              Text('Rp. 4.000,00'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Card(
                        elevation: 4.0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/coca.jpg',
                                width: 250,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                              Text('Coca Cola'),
                              Text('Rp. 6.000,00'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(
      String label, String imagePath, Color color, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (label == 'All') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
        if (label == 'Makanan') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeM()),
          );
        }
      },
      child: Column(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                width: 60.0,
                height: 60.0,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(label),
        ],
      ),
    );
  }
}

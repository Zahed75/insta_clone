import 'package:flutter/material.dart';
import 'package:insta_clone/Screen/home/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: 500,

                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://yt3.googleusercontent.com/Afue70OQPNnFOQgwim8nsO78k7M9MmzpJmpN38J2vomalbhwoJ_8eyt8H6A6SWqlEwKmSg-q4Q=s900-c-k-c0x00ffffff-no-rj',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              'https://futurestartup.com/wp-content/uploads/2023/11/Future-Startup-Article-Banner-Designs-46.jpg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'redefine modern retail and shape the future of E-grocery',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10),
                  Text(
                    'Operated by ACI Logistics Limited',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      rowIconText('20', Icons.favorite),
                      rowIconText('34', Icons.upload),
                      rowIconText('82', Icons.message),
                      rowIconText('92', Icons.face),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s',
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileWidget()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 30,
                  color: Colors.redAccent,
                ),
                tooltip: 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(width: 5),
        Icon(icon),
      ],
    );
  }
}

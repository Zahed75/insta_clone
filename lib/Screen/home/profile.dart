import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Shawpno.sh",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            child: Row(
              children: [
                // Left section (avatar + name)
                Container(
                  padding: EdgeInsets.all(10),
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://yt3.googleusercontent.com/Afue70OQPNnFOQgwim8nsO78k7M9MmzpJmpN38J2vomalbhwoJ_8eyt8H6A6SWqlEwKmSg-q4Q=s900-c-k-c0x00ffffff-no-rj',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Shwapno",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "E-Grocery in your town",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                // Right section (stats + button)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Row of stats
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: ProfileDetails('232', 'Followers')),
                            Expanded(child: ProfileDetails('232', 'Friends')),
                            Expanded(child: ProfileDetails('150', 'Following')),
                          ],
                        ),
                        SizedBox(height: 15),
                        // Follow button + icon
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 45,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red, width: 2),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 16,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Horizontal ListView under profile
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 50,
                        child: Text(
                          'Title',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(height: 100, color: Colors.white24),
          Expanded(child: Container(color: Colors.amberAccent)),
        ],
      ),
    );
  }

  Widget ProfileDetails(String text1, text2) {
    return Column(
      children: [
        Text(text1, style: TextStyle(fontSize: 20)),
        Text(
          text2,
          style: TextStyle(fontSize: 15),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hy_golekos/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F6FD),
      body: SafeArea(
        child: Column(
          children: [
            // NAV
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello, ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Shayna Far',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/user.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 15,
                ),
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Find your next home',
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  SizedBox(height: 33),
                  // TIPS
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: const [
                          Color(0xFF7FE2FE),
                          Color(0xFF2BC5F1),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 15,
                          left: 16,
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/icon.png'),
                                height: 60,
                                width: 60,
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Payment Safety',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'Kindly only use our official card',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -17,
                          bottom: -18,
                          child: Container(
                            height: 92,
                            width: 99,
                            decoration: BoxDecoration(
                              color: Color(0x1AFFFFFF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -12,
                          bottom: -18,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0x33FFFFFF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 27),
                  // MOST PEOPLE GO
                  Text(
                    'Most People Go',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF040507),
                    ),
                  ),
                  SizedBox(height: 16),
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 100),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 21),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: listPopularKos.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailPage(
                                        popularkos: listPopularKos[index],
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Color.fromARGB(255, 228, 228, 228),
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 3,
                                      color: Color(0xFFF4F6FA),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                    bottom: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  listPopularKos[index]
                                                      .imageUrl,
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listPopularKos[index].kosName,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF040507),
                                                ),
                                              ),
                                              SizedBox(height: 6),
                                              Text(
                                                listPopularKos[index].kosType,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color(0xFFA5A5A5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '\$${listPopularKos[index].price.toString()}',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF040507),
                                            ),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '/month',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xFFA5A5A5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 12,
              color: Color(0xB3EEF4FF),
              offset: Offset(0, -7),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: GNav(
            gap: 8,
            activeColor: Color(0xFF2DC6F2),
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Color(0xFFDFF8FF),
            color: Color(0xFFCBD0DF),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.sort_rounded,
                text: 'Filter',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class PopularKos {
  final String imageUrl;
  final String kosName;
  final String kosType;
  final int price;
  final List<RoomSpecs> roomspecs;
  const PopularKos({
    Key? key,
    required this.imageUrl,
    required this.kosName,
    required this.kosType,
    required this.price,
    required this.roomspecs,
  });
}

class RoomSpecs {
  final String features;
  final String imageUrl;
  final int countFeatures;
  RoomSpecs({
    required this.features,
    required this.imageUrl,
    required this.countFeatures,
  });
}

List<RoomSpecs> listRoomSpecs = [
  RoomSpecs(
    features: 'Master Bed',
    imageUrl: 'assets/bed.png',
    countFeatures: 3,
  ),
  RoomSpecs(
    features: 'Bathrooms',
    imageUrl: 'assets/bath.png',
    countFeatures: 2,
  ),
  RoomSpecs(
    features: 'Kitchen',
    imageUrl: 'assets/bar.png',
    countFeatures: 1,
  ),
];

List<PopularKos> listPopularKos = [
  PopularKos(
    imageUrl: 'assets/kos1.png',
    kosName: 'Fukko Cozy',
    kosType: 'Wanita',
    price: 55,
    roomspecs: listRoomSpecs,
  ),
  PopularKos(
    imageUrl: 'assets/kos2.png',
    kosName: 'Blue Fast ',
    kosType: 'Umum',
    price: 21,
    roomspecs: listRoomSpecs,
  ),
  PopularKos(
    imageUrl: 'assets/kos3.png',
    kosName: 'Jamaixa IIX',
    kosType: 'Pria',
    price: 49,
    roomspecs: listRoomSpecs,
  ),
  PopularKos(
    imageUrl: 'assets/kos4.png',
    kosName: 'Yaka Past',
    kosType: 'Wanita',
    price: 82,
    roomspecs: listRoomSpecs,
  ),
];

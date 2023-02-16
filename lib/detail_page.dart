import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:hy_golekos/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.popularkos,
  }) : super(key: key);
  final PopularKos popularkos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -170,
            left: 0,
            right: 0,
            child: Image(
              image: AssetImage(popularkos.imageUrl),
              fit: BoxFit.cover,
              alignment: Alignment.bottomRight,
            ),
          ),
          Positioned(
            top: 30,
            left: 22,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.keyboard_arrow_left_outlined),
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_outline,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 280,
            bottom: 0,
            child: Container(
              // height: 360,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.white,
                gradient: LinearGradient(
                  colors: const [
                    Color(0xFFFFFFFF),
                    Color(0xFFF2F6FD),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popularkos.kosName,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              popularkos.kosType,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 24,
                          itemCount: 5,
                          unratedColor: Color(0xFFECF0F6),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color(0xFFFDB92C),
                          ),
                          onRatingUpdate: (rating) {
                            // print(rating);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Room Specs',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF040507),
                      ),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularkos.roomspecs.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(width: 40);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          RoomSpecs listRoomSpecs = popularkos.roomspecs[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(listRoomSpecs.imageUrl),
                                    size: 28,
                                    color: Color(0xFF7129F9),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    listRoomSpecs.countFeatures.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF040507),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                listRoomSpecs.features,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xFFA5A5A5),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Happy Tenant',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF040507),
                      ),
                    ),
                    SizedBox(height: 12),
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 50),
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16);
                        },
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            listTestimonial[index].imageUrl),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        listTestimonial[index].name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF040507),
                                        ),
                                      ),
                                      Text(
                                        listTestimonial[index].testi,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xFFA5A5A5),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${listTestimonial[index].rate}/5',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF040507),
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFFFDB92C),
                                  )
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            height: 94,
            width: MediaQuery.of(context).size.width / 2.8,
            color: Color(0xFFFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '\$1,355',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF040507),
                  ),
                ),
                Text(
                  '/month',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFA5A5A5),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 94,
            width: MediaQuery.of(context).size.width - 141,
            color: Color(0xFF29D5F8),
            child: Center(
              child: Text(
                'BOOKING NOW',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Testimonial {
  final String imageUrl;
  final String name;
  final String testi;
  final int rate;
  Testimonial({
    required this.imageUrl,
    required this.name,
    required this.testi,
    required this.rate,
  });
}

List<Testimonial> listTestimonial = [
  Testimonial(
    imageUrl: 'assets/testi1.png',
    name: 'Masayoshi',
    testi: 'Cozy for Freelancer',
    rate: 5,
  ),
  Testimonial(
    imageUrl: 'assets/testi2.png',
    name: 'Aken Tell',
    testi: 'Feels like at home',
    rate: 4,
  ),
];

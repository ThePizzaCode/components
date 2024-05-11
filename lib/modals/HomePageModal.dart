import 'package:flutter/material.dart';

class HomePageModal extends StatefulWidget {
  const HomePageModal({super.key});

  @override
  State<HomePageModal> createState() => _HomePageModalState();
}

class _HomePageModalState extends State<HomePageModal> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 0,
        left: 0,
        bottom: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(9),
                    topRight: Radius.circular(9),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Route',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.wallet,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              height: 37,
                              width: 37,
                            )
                          ],
                        )
                      ],
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20)),
                    //   height: 5,
                    //   width: 35,
                    // ),
                  ]),
                ),
              ),
            ),
          ],
        ));
  }
}

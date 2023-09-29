import 'dart:ui';

import 'package:carly_dashboard/const.dart';
import 'package:carly_dashboard/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1077,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff31d0f4),
            // Color(0xcc23dd7b),
            Color(0xff23dd7b)
          ],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(tWallet),
                    ),
                  )),
              const SizedBox(
                width: 15,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Revenue",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "GHC 2,500.59",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 8.0,
                      sigmaY: 8.0), // Adjust the blur values as needed
                  child: Container(
                    color: Colors.white
                        .withOpacity(0.2), // Adjust the opacity as needed
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MTD",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        ArrowDownWidget(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:carly_dashboard/const.dart';
import 'package:carly_dashboard/pages/home/widgets/header_widget-2.dart';
import 'package:carly_dashboard/pages/home/widgets/header_widget.dart';
import 'package:carly_dashboard/pages/home/widgets/line_chart_card.dart';
import 'package:carly_dashboard/responsive.dart';
import 'package:carly_dashboard/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomePage({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    SizedBox _height(BuildContext context) => SizedBox(
          height: Responsive.isDesktop(context) ? 30 : 20,
        );
    SizedBox _width(BuildContext context) => SizedBox(
          width: Responsive.isDesktop(context) ? 30 : 20,
        );
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
        height: size.height,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 15 : 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Responsive.isMobile(context) ? 5 : 18,
              ),
              Header(scaffoldKey: scaffoldKey),

              // // _height(context),
              const HeaderWidget(),
              _height(context),

              const Text(
                "Welcome Marley",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Have a nice day at work",
                style: TextStyle(color: Colors.black),
              ),
              const Row(
                children: [
                  Spacer(),
                  CustomCard(
                    child: Row(
                      children: [
                        Text(
                          "2 Nov - 2 Dec 2022",
                          style: TextStyle(color: Colors.black),
                        ),
                        ArrowDownWidget()
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    child: Row(
                      children: [
                        Text(
                          "GHS",
                          style: TextStyle(color: Colors.black),
                        ),
                        ArrowDownWidget()
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TransactionHeaderWidget(),
              _height(context),
              const Text(
                "Analytics",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: LineChartCard()),
                  _width(context),
                  Column(
                    children: [
                      Container(
                        height: 146,
                        width: 270,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          color: cardBackgroundColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(45.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Gross Income",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.w500,
                                    )),
                                Row(
                                  children: [
                                    Text(
                                      "GHC 28.8k",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.green,
                                    ),
                                    Text("25%",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      _height(context),
                      Container(
                        height: 146,
                        width: 270,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          color: cardBackgroundColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(45.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Provider Payouts",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.w500,
                                    )),
                                Row(
                                  children: [
                                    Text(
                                      "GHC 28.8k",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.red,
                                    ),
                                    Text("25%",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              _height(context),
              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                        child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Analytics Overview",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Revenue',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: Colors.black),
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.05,
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.green,
                                                      size: 15.0,
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.001,
                                                    ),
                                                    Text(
                                                      '+25%',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.green),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            const Text(
                                              'GHC 28.8K',
                                              style: TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const DotWidget(
                                        padding: EdgeInsets.only(
                                            left: 32, right: 52),
                                        color: Color(0xff96D8F3),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(12),
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Payouts',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: Colors.black),
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.01,
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.green,
                                                      size: 15.0,
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.001,
                                                    ),
                                                    Text(
                                                      '+25%',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.green),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            const Text(
                                              'GHC 78K',
                                              style: TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const DotWidget(
                                        padding: EdgeInsets.only(
                                            left: 63, right: 15),
                                        color: Color(0xff4887FA),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: [
                                      TCardWidegt(size: size),
                                      const DotWidget(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 50),
                                        color: Color(0xff31D0F4),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Gross Income \n(Revenue - Payouts)',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: Colors.black),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.green,
                                                      size: 15.0,
                                                    ),
                                                    SizedBox(
                                                      width: size.width * 0.001,
                                                    ),
                                                    Text(
                                                      '+25%',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.green),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            const Text(
                                              'GHC 30.8K',
                                              style: TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const DotWidget(
                                        color: Color(0xff031C48),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Expanded(
                                child: Image.asset(
                                  tPieChart,
                                  fit: BoxFit.fitWidth,
                                  height: 150,
                                  width: 150,
                                ),
                              ),
                            ],
                          ),
                          // Expanded(
                          //   child: PieChart(
                          //     PieChartData(
                          //       sections: [
                          //         PieChartSectionData(
                          //           color: Colors.blue,
                          //           value: 30, // Replace with your data
                          //         ),
                          //         PieChartSectionData(
                          //           color: Colors.red,
                          //           value: 20, // Replace with your data
                          //         ),
                          //         PieChartSectionData(
                          //           color: Colors.green,
                          //           value: 15, // Replace with your data
                          //         ),
                          //         // Add more sections with different colors and values as needed
                          //       ],
                          //       sectionsSpace: 0,
                          //       centerSpaceRadius: 50,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )),
                  ),
                  _width(context),
                  Column(
                    children: [
                      Container(
                        height: 130,
                        width: 270,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          color: cardBackgroundColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(39.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Number of users",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.w500,
                                    )),
                                Row(
                                  children: [
                                    Text(
                                      "235",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      "25%",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      _height(context),
                      Container(
                        height: 146,
                        width: 270,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          color: cardBackgroundColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(39.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Number of providers",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.w500,
                                    )),
                                Row(
                                  children: [
                                    Text(
                                      "75",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.green,
                                    ),
                                    Text("25%",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              _height(context),
            ],
          ),
        )));
  }
}

class TCardWidegt extends StatelessWidget {
  const TCardWidegt({
    super.key,
    required this.size,
  });

  final Size size;
  // final String title;
  // final String amount;
  // final String

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 151,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wallet \nBalances',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 15,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: size.width * 0.001,
                  ),
                  Text(
                    '+25%',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'GHC 12.6K',
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/svg/search.svg",
          color: Colors.grey,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "Search Apppointment, Patient or etc",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green[50]),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Online",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                DotWidget(),
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Image.asset(
            tNotificationIcon,
            height: 40,
            width: 40,
          ),
        ),
        Image.asset(
          tProfile,
          height: 35,
          width: 35,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Marley",
            style: TextStyle(color: Colors.black),
          ),
        ),
        const ArrowDownWidget()
      ],
    );
  }
}

class DotWidget extends StatelessWidget {
  const DotWidget({
    super.key,
    this.color = Colors.green,
    this.padding = const EdgeInsets.symmetric(horizontal: 15),
  });
  final Color color;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}

class ArrowDownWidget extends StatelessWidget {
  const ArrowDownWidget({
    super.key,
    this.color = Colors.black,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      tArrowDown,
      height: 20,
      width: 20,
      color: color,
    );
  }
}

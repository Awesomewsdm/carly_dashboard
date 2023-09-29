import 'package:carly_dashboard/const.dart';
import 'package:carly_dashboard/model/menu_modal.dart';
import 'package:carly_dashboard/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Menu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Menu({super.key, required this.scaffoldKey});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<MenuModel> menu1 = [
    MenuModel(icon: 'assets/svg/dashboard.svg', title: "Dashboard"),
    MenuModel(icon: 'assets/svg/transactions.svg', title: "Transactions"),
    MenuModel(icon: 'assets/svg/partners.svg', title: "Partners"),
    MenuModel(icon: 'assets/svg/profile.svg', title: "Accounts"),
    MenuModel(icon: 'assets/svg/message.svg', title: "Onboarding"),
    MenuModel(
        icon: 'assets/svg/promos & awards.svg', title: "Promos & Rewards"),
    MenuModel(icon: 'assets/svg/verify.svg', title: "Verifications"),
    MenuModel(icon: 'assets/svg/products.svg', title: "Products"),
    MenuModel(icon: 'assets/svg/wallet.svg', title: "Float"),
    MenuModel(icon: 'assets/svg/eye.svg', title: "Survelliance Report"),
  ];

  List<MenuModel> menu2 = [
    MenuModel(icon: 'assets/svg/chat.svg', title: "Support"),
    MenuModel(icon: 'assets/svg/setting.svg', title: "Settings"),
    MenuModel(icon: 'assets/svg/filter.svg', title: "Filter"),
  ];

  List<MenuModel> menu3 = [
    MenuModel(icon: 'assets/svg/signout.svg', title: "Logout"),
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 100,
      decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              tAppLogo2,
              height: 54,
              width: 120,
            ),
            SizedBox(
              height: Responsive.isMobile(context) ? 40 : 20,
            ),
            for (var i = 0; i < menu1.length; i++)
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  // color: selected == i
                  //     ? Theme.of(context).primaryColor
                  //     : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = i;
                    });
                    widget.scaffoldKey.currentState!.closeDrawer();
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 7),
                        child: SvgPicture.asset(
                          menu1[i].icon,
                          color: selected == i
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                      ),
                      Text(
                        menu1[i].title,
                        style: TextStyle(
                            fontSize: 15,
                            color: selected == i
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            fontWeight: selected == i
                                ? FontWeight.w600
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            for (var i = 0; i < menu2.length; i++)
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  // color: selected == i
                  //     ? Theme.of(context).primaryColor
                  //     : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = i;
                    });
                    widget.scaffoldKey.currentState!.closeDrawer();
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 7),
                        child: SvgPicture.asset(
                          menu2[i].icon,
                          color: selected == i
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                      ),
                      Text(
                        menu2[i].title,
                        style: TextStyle(
                            fontSize: 15,
                            color: selected == i
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            fontWeight: selected == i
                                ? FontWeight.w600
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            for (var i = 0; i < menu3.length; i++)
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  // color: selected == i
                  //     ? Theme.of(context).primaryColor
                  //     : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = i;
                    });
                    widget.scaffoldKey.currentState!.closeDrawer();
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 7),
                        child: SvgPicture.asset(
                          menu3[i].icon,
                          color: selected == i
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                      ),
                      Text(
                        menu3[i].title,
                        style: TextStyle(
                            fontSize: 15,
                            color: selected == i
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            fontWeight: selected == i
                                ? FontWeight.w600
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
          ],
        )),
      ),
    );
  }
}

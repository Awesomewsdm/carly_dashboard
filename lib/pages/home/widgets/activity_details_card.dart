import 'package:carly_dashboard/model/health_model.dart';
import 'package:carly_dashboard/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        //     crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        //     mainAxisSpacing: 12.0),
        children: const [TransactionCardWidget()]);
  }
}

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SizedBox(
          height: 150,
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
                    Icons.arrow_downward,
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
    );
  }
}

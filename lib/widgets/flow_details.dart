import 'package:flutter/material.dart';

class FlowDetails extends StatelessWidget {
  const FlowDetails(
      {super.key,
      required this.isBigger1,
      required this.flow1,
      required this.flow2,
      required this.isBigger2});
  final double flow1, flow2;
  final bool isBigger1, isBigger2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: 10,
                width: MediaQuery.sizeOf(context).width * .3,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: isBigger1 ? Colors.blue : Colors.grey),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 10,
                  width: MediaQuery.sizeOf(context).width * flow1,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.white),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 10,
                width: MediaQuery.sizeOf(context).width * .3,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: isBigger2 ? Colors.blue : Colors.grey),
              ),
              Positioned(
                left: 0,
                child: Container(
                  height: 10,
                  width: MediaQuery.sizeOf(context).width * flow2,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FlowDetails extends StatelessWidget {
  const FlowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
            width: MediaQuery.sizeOf(context).width * .3,
            decoration:
                BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
          ),
          Container(
            height: 10,
            width: MediaQuery.sizeOf(context).width * .3,
            decoration:
                BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

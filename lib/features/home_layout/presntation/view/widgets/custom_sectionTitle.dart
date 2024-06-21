import 'package:flutter/material.dart';

class CustomSectionTitle extends StatelessWidget {
  String title;
  CustomSectionTitle({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "$title",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "see all",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade300,
                ),
                child: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  final String contactImagePath;
  final String contactName;

  const AddContact({
    Key? key,
    required this.contactImagePath,
    required this.contactName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          contactImagePath,
          height: 50,
        ),
        const SizedBox(height: 5),
        Text(
          contactName,
          style: const TextStyle(
            color: Color.fromRGBO(187, 204, 204, 1),
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

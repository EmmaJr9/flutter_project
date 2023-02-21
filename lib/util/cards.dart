import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String cardType;
  final String cardImagePath;
  final int cardNumber;
  final double balance;

  const TransactionCard({
    Key? key,
    required this.cardType,
    required this.cardImagePath,
    required this.cardNumber,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 190,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(43, 103, 102, 1),
          border: Border.all(
            color: const Color.fromRGBO(187, 204, 204, 1),
            width: 2.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    cardImagePath,
                    height: 45,
                    color: const Color.fromRGBO(187, 204, 204, 1),
                  ),
                  Text(
                    "$cardNumber",
                    style: const TextStyle(
                        color: Color.fromRGBO(79, 131, 129, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                cardType,
                style: const TextStyle(
                  color: Color.fromRGBO(79, 131, 129, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '\$$balance',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

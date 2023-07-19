import 'package:flutter/material.dart';

class ErrorBody extends StatelessWidget {
  final String errorMessage;

  const ErrorBody({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 200,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            maxLines: 4,
            style:Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

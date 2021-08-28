import 'package:flutter/material.dart';

class Result  extends StatelessWidget {
  final VoidCallback reset;
  const Result (this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You have answered correctly'),
          ElevatedButton(onPressed: reset, child: Text('Reset'))
        ],
      ),
    );
  }
}

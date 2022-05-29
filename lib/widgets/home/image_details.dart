import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: const BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 0.1,
        //   )
        // ],
        color: Colors.white,
      ),
      child: Center(
        child: SizedBox(
          width: 240,
          height: 240,
          child: Image.network(
            'https://images.unsplash.com/photo-1653787849876-c20bcb0880ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          ),
        ),
      ),
    );
  }
}

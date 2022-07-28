import 'package:flutter/material.dart';


class NeivigtionButton extends StatelessWidget {
  final String? path;
  const NeivigtionButton({ this.path,super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -45,
        right: -45,
        child: InkWell(
          onTap: () {
           Navigator.pushNamed(context, path!);
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xffdad4cc).withOpacity(0.8)),
            child: const Align(
              alignment: Alignment(-0.5, -0.5),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ));
  }
}

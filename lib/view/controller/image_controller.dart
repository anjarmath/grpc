import 'package:flutter/material.dart';

class ImageController {
  BuildContext context;
  ImageController(this.context);

  void showImageOverlay(String url) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: InteractiveViewer(
            child: Image.asset(
              url,
              width: MediaQuery.of(context).size.width,
              colorBlendMode: BlendMode.colorBurn,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}

import 'package:flash_chat/components/constants.dart';
import 'package:flutter/material.dart';

Future errorMessage(BuildContext context, String error) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: color_principal,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          title: Text('Error'),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              error,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0),
            Image.asset(
              'images/logo.png',
              height: 100.0,
            ),
          ]),
          actions: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'cancelar',
                  style: TextStyle(
                    color: color_principal,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        );
      });
}

import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Text('EXPLORE'),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Discover',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: screenSize.width / 20),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: screenSize.width / 50,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

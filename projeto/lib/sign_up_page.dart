import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 440,
              width: 440,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              top: _isHover ? -8 : 0,
              right: _isHover ? 8 : 0,
      
              child: InkWell(
                onTap: () {},
                onHover: (hover) {
                  setState(() {
                    _isHover = hover;
                  });
                },
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: 440,
                  width: 440,
                  decoration: BoxDecoration(
                    color: _isHover ? Color.fromARGB(255, 148, 26, 138) : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

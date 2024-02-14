import 'package:flutter/cupertino.dart';

void main() {
  runApp(const CupertinoApp(
    title: 'FontWeight Test',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('First Route'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Second Route'),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Spacer(),
            Text(
              "100 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w100, fontFamily: 'PingFang SC'),
            ),
            Text(
              "200 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w200, fontFamily: 'PingFang SC'),
            ),
            Text(
              "300 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w300, fontFamily: 'PingFang SC'),
            ),
            Text(
              "400 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w400, fontFamily: 'PingFang SC'),
            ),
            Text(
              "500 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w500, fontFamily: 'PingFang SC'),
            ),
            Text(
              "600 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w600, fontFamily: 'PingFang SC'),
            ),
            Text(
              "700 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w700, fontFamily: 'PingFang SC'),
            ),
            Text(
              "800 中文 A",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.w800, fontFamily: 'PingFang SC'),
            ),
            // Text(
            //   "900 中文 A",
            //   style: TextStyle(fontSize: 55, fontWeight: FontWeight.w900, fontFamily: 'PingFang SC'),
            // ),
            new Spacer(),
          ],
        ),
      ),
    );
  }
}

class ThridRoute extends StatelessWidget {
  const ThridRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('3rd Route'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
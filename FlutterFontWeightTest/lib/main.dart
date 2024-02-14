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
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w100),
            ),
            Text(
              "200 中文 A",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
            ),
            Text(
              "300 中文 A",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
            ),
            Text(
              "400 中文 A",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w400),
            ),
            Text(
              "500 中文 A",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
            ),
            Text(
              "600 中文 A",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
            ),
            Text(
              "700 中文 A",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
            ),
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
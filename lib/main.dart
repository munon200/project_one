import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

void main() {
  runApp(
    CustomApp(
      initRoute: '/home',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => AAAStateaa());
      },
    ),
  );
}

class AAAStateaa extends StatefulWidget {
  const AAAStateaa({Key? key}) : super(key: key);

  @override
  State<AAAStateaa> createState() => _AAAStateaaState();
}

class _AAAStateaaState extends State<AAAStateaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('vi')),
            ElevatedButton(
                onPressed: () {
                },
                child: Text('En')),
          ],
        ),
      ),
    );
  }
}

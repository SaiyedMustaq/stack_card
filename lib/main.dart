import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> fancyCards = [
    FancyCard(
      index: 0,
      image: Image.asset("asset/images/1.jpg"),
      title: "Olivia",
    ),
    FancyCard(
      index: 0,
      image: Image.asset("asset/images/2.jpg"),
      title: "Emma",
    ),
    FancyCard(
      index: 2,
      image: Image.asset("asset/images/3.jpg"),
      title: "Charlotte",
    ),
    FancyCard(
      index: 3,
      image: Image.asset("asset/images/4.jpg"),
      title: "Sophia",
    ),
    FancyCard(
      index: 4,
      image: Image.asset("asset/images/5.jpg"),
      title: "Isabella",
    ),
    // FancyCard(
    //   image: Image.asset("asset/images/6.jpg"),
    //   title: "Play with your cat!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/7.jpg"),
    //   title: "Say hello to planets!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/8.jpg"),
    //   title: "Don't be sad!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/9.jpg"),
    //   title: "Go for a walk!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/10.jpg"),
    //   title: "Try teleportation!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/11.jpg"),
    //   title: "Enjoy your coffee!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/12.jpg"),
    //   title: "Play with your cat!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/13.jpg"),
    //   title: "Say hello to planets!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/14.jpg"),
    //   title: "Don't be sad!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/15.jpg"),
    //   title: "Go for a walk!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/16.jpg"),
    //   title: "Try teleportation!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/17.jpg"),
    //   title: "Enjoy your coffee!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/18.jpg"),
    //   title: "Play with your cat!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/19.jpg"),
    //   title: "Play with your cat!",
    // ),
    // FancyCard(
    //   image: Image.asset("asset/images/20.jpg"),
    //   title: "Play with your cat!",
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: StackedCardCarousel(
                items: fancyCards,
                type: StackedCardCarouselType.fadeOutStack,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FancyCard extends StatelessWidget {
  const FancyCard({Key? key, this.image, this.title, this.index})
      : super(key: key);

  final Image? image;
  final String? title;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: image,
            ),
            Text(
              title.toString(),
              style: Theme.of(context).textTheme.headline5,
            ),
            OutlinedButton(
              child: const Text("Learn more"),
              onPressed: () => print("Button was tapped"),
            ),
          ],
        ),
      ),
    );
  }
}

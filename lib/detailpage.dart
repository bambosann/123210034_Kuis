import 'package:flutter/material.dart';
import 'package:kuiss/groceries.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final Groceries kebutuhan;
  const DetailScreen({super.key, required this.kebutuhan});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.kebutuhan.name),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.network(widget.kebutuhan.productImageUrls[0],),
            ),
            
            title: Text(widget.kebutuhan.name),
            Text(widget.kebutuhan.name),
            Text(widget.kebutuhan.description),
            Text(widget.kebutuhan.price),
            Text(widget.kebutuhan.reviewAverage),
            Text(widget.kebutuhan.discount)
          ],
        ),
    );
  }
}

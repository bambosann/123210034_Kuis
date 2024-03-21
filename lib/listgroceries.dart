import 'package:flutter/material.dart';
import 'package:kuiss/detailpage.dart';
import 'package:kuiss/groceries.dart';

class ListGroceries extends StatelessWidget {
  const ListGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Groceries'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16/9,
            mainAxisSpacing: 50.0,
            crossAxisSpacing: 50.0,
          ),
          itemCount: groceryList.length,
          itemBuilder: (context, index) {
            final Groceries kebutuhan = groceryList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen(kebutuhan: kebutuhan)));
              },
              child: Card(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(kebutuhan.productImageUrls[0]),
                    ),
                    Text(kebutuhan.name),
                    Text(kebutuhan.price),
                    
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}





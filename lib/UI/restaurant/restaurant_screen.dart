import 'package:flutter/material.dart';
import 'package:myapp/UI/_core/app_colors.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/model/dish.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          spacing: 12.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/${restaurant.imagePath}', width: 128),
            SizedBox(height: 12.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Mais pedidos',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ),
          Column(
              children: List.generate(restaurant.dishes.length, (index) {
              Dish dish = restaurant.dishes[index];
              return ListTile(
                leading: Image.asset(
                'assets/dishes/default.png', 
                width: 48, 
                height: 48),
                title: Text(dish.name),
                subtitle: Text("R\$${dish.price.toStringAsFixed(2)}"),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              );
            }),
          )
          ],
        ),
      ),
    );
  }
}

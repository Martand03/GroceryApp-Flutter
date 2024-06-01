import 'package:flutter/material.dart';

class GroceryItemTitle extends StatelessWidget{

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final  Color color;
  void Function()? onPressed;

   GroceryItemTitle({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed

  });

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child:Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: color.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //image
              Image.asset(
                imagePath,
                height: 64,
              ),
              //itemName
              Text(itemName),

              MaterialButton(
                  onPressed: onPressed,
                color: color,
                child: Text(
                  '\₹'+itemPrice,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              )

              //price+button
            ],
          ),
        )

    );
  }
}
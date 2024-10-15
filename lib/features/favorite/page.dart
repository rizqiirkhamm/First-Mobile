import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 87,
            alignment: Alignment.center,
            child: const Text(
              'Favorite Shoes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 180),
            child:  Icon(
              Icons.heart_broken,
              size: 100,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 23),
            child:  Text(
              ' You don\'t have dream shoes?',
              style: TextStyle(
                color: Color(0xffF1F0F2),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 12),
            child:  Text(
              'Let\'s find your favorite shoes',
              style: TextStyle(
                color: Color(0xff999999),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 44,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6C5ECF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: (){},
                child: const Text('Explore Store',
                  style:  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

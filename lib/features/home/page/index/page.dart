import 'package:flutter/material.dart';

import '../../models/product_model.dart';

part 'sections/header_section.dart';

part 'sections/content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> headerData = [
    'All Shoes',
    'Running',
    'Training',
    'Basketball',
  ];

  List<Widget> content = [
    AllShoes(),
    RunningShoes(),
    TrainingShoes(),
    BasketballShoes(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const _HeaderSection(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 83,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? const Color(0xff6C5ECF)
                            : null,
                        borderRadius: BorderRadius.circular(12),
                        border: selectedIndex == index
                            ? null
                            : Border.all(
                                width: 1,
                                color: const Color(0xff302F37),
                              ),
                      ),
                      child: Center(
                        child: Text(
                          headerData[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: selectedIndex == index
                                ? Colors.white
                                : const Color(0xff504F5E),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 16,
                  );
                },
                itemCount: headerData.length,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          content[selectedIndex],

        ],
      ),
    );
  }
}

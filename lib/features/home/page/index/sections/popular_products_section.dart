// part of '../page.dart';
//
// // Define the Product model inside the same file
// class Product {
//   final String name;
//   final String category;
//   final String imageUrl;
//   final double price;
//
//   Product({
//     required this.name,
//     required this.category,
//     required this.imageUrl,
//     required this.price,
//   });
// }
//
// class _PopularProductsSection extends StatefulWidget {
//   @override
//   State<_PopularProductsSection> createState() =>
//       _PopularProductsSectionState();
// }
//
// class _PopularProductsSectionState extends State<_PopularProductsSection> {
//   // Example list of products
//   List<Product> products = [
//     Product(
//       name: 'TERREX URBAN LOW',
//       category: 'Hiking',
//       imageUrl: 'assets/images/terrex.png',
//       price: 143.98,
//     ),
//     Product(
//       name: 'COURT VISION 2.0',
//       category: 'Training',
//       imageUrl: 'assets/images/court.png',
//       price: 58.67,
//     ),
//     Product(
//       name: 'SL 72 SHOES',
//       category: 'Training',
//       imageUrl: 'assets/images/sl.png',
//       price: 58.67,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Popular Products',
//             style: TextStyle(
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//               fontSize: 22,
//             ),
//           ),
//           const SizedBox(
//             height: 14,
//           ),
//           SizedBox(
//             height: 278,
//             child: ListView.separated(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (BuildContext context, int index) {
//                 final product = products[index]; //jadi ini memangil function yang diatas
//                 return Container(
//                   width: 225,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffF1F0F2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 30),
//                         child: Image.asset(
//                           product.imageUrl,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Text(
//                           product.category,
//                           style: const TextStyle(
//                             color: Color(0xff999999),
//                             fontWeight: FontWeight.w400,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20, top: 6),
//                         child: Text(
//                           product.name,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 18,
//                             color: Color(0xff2E2E2E),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20, top: 6),
//                         child: Text(
//                           '\$${product.price.toStringAsFixed(2)}',
//                           style: const TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xff2C96F1),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//               separatorBuilder: (BuildContext context, int index) {
//                 return const SizedBox(
//                   width: 30,
//                 );
//               },
//               itemCount: products.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

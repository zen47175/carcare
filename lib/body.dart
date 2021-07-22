// ignore: unused_import
import 'package:carcare/detail/detailproduct.dart';
import 'package:carcare/models/categories.dart';
import 'package:carcare/product_card.dart';
import 'package:flutter/material.dart';

import 'categoryType.dart';
import 'models/Products.dart';

class Topic extends StatelessWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryType(
                  category: category,
                ),
                CategoryType(
                  category: category,
                ),
                CategoryType2(
                  category: category,
                ),
              ],
            ),
          ),
          Divider(height: 5),
          //product1
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'All product',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.63),
              itemBuilder: (context, index) => AllProduct(
                product: product,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProduct(product: product),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
        
          //product2 phoneset
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 1,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisSpacing: 20,
//                   crossAxisCount: 1,
//                   mainAxisSpacing: 20,
//                   childAspectRatio: 0.63),
//               itemBuilder: (context, index) => AllProduct2(
//                 product: product,
//                 press: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DetailProduct2(product2: product),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           // product3 car air purifier
//           Padding(
//             padding: const EdgeInsets.all(1),
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 2,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisSpacing: 20,
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 20,
//                   childAspectRatio: 0.63),
//               itemBuilder: (context, index) => AllProduct3(
//                 product: product,
//                 press: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DetailProduct3(product3: product),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

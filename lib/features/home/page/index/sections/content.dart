part of '../page.dart';

class AllShoes extends StatefulWidget {
  @override
  State<AllShoes> createState() => _AllShoesState();
}

class _AllShoesState extends State<AllShoes> {
  // Popular Product

List<Product> products = [
  Product(
    name: 'TERREX URBAN LOW',
    category: 'Hiking',
    imageUrl: 'assets/images/terrex.png',
    price: 143.98,
  ),
  Product(
    name: 'COURT VISION 2.0',
    category: 'Training',
    imageUrl: 'assets/images/court.png',
    price: 58.67,
  ),
  Product(
    name: 'SL 72 SHOES',
    category: 'Training',
    imageUrl: 'assets/images/sl.png',
    price: 58.67,
  ),
];

  // Product Arrivals

  List<Product> productsArrivals = [
    Product(
      name: 'Predator 20.3 Firm Ground',
      category: 'Football',
      imageUrl: 'assets/images/predator.png',
      price: 68.47,
    ),
    Product(
      name: 'Ultra 4D 5 Shoes',
      category: 'Running',
      imageUrl: 'assets/images_running/ultra.png',
      price: 285.73,
    ),
    Product(
      name: 'Court Vision 2.0 Shoes',
      category: 'Basketball',
      imageUrl: 'assets/images/court_vison.png',
      price: 57.15,
    ),
    Product(
      name: 'LEGO® SPORT SHOES',
      category: 'Training',
      imageUrl: 'assets/images_basketball/lego.png',
      price: 92.72,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Products',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 278,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Container(
                  width: 215,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F0F2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          product.category,
                          style: const TextStyle(
                            color: Color(0xff999999),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 6, right: 15),
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff2E2E2E),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 6),
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2C96F1),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 30,
                );
              },
              itemCount: products.length,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'New Arrivals',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 650,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final productArrivals = productsArrivals[
                        index]; // jadi ini memangil function yang diatas
                    return Container(
                      width: 120,
                      height: 120,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Image.asset(
                            productArrivals.imageUrl,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productArrivals.category,
                                  style: const TextStyle(
                                      color: Color(0xff999999),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: SizedBox(
                                    width: 170,
                                    child: Text(
                                      productArrivals.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    '\$${productArrivals.price.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Color(0xff2C96F1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 30,
                    );
                  },
                  itemCount: productsArrivals.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RunningShoes extends StatelessWidget {
  // Categories Runningy

  List<Product> categoriesRunning = [
    Product(
        name: 'Ultra 4D 5 Shoes',
        category: 'Running',
        imageUrl: 'assets/images_running/ultra.png',
        price: 285.73),
    Product(
        name: 'Duramo 9 Shoes',
        category: 'Running',
        imageUrl: 'assets/images_running/duramo.png',
        price: 45.40),

    Product(
      name: 'Ultra 4D 6 Oreo',
      category: 'Running',
      imageUrl: 'assets/images_running/oreo.png',
      price: 286.75
    ),


    Product(
        name: 'Adizero RC 2 Shoes',
        category: 'Running',
        imageUrl: 'assets/images_running/adizero.png',
        price: 92.72),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For You',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 650,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final categoriRunning = categoriesRunning[index];
                return Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: Row(

                    children: [
                      Image.asset(
                        categoriRunning.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoriRunning.category,
                              style: const TextStyle(
                                  color: Color(0xff999999),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: SizedBox(
                                width: 170,
                                child: Text(
                                 categoriRunning.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                             Padding(
                              padding:const EdgeInsets.only(top: 6),
                              child: Text(
                                '\$${ categoriRunning.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  color: Color(0xff2C96F1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: categoriesRunning.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TrainingShoes extends StatefulWidget {
  const TrainingShoes({super.key});

  @override
  State<TrainingShoes> createState() => _TrainingShoesState();
}

class _TrainingShoesState extends State<TrainingShoes> {


  List<Product> categoriesTraining = [
    Product(
        name: 'LEGO® SPORT SHOES',
        category: 'Trainning',
        imageUrl: 'assets/images_basketball/lego.png',
        price: 285.73),
    Product(
        name: 'Fortarun Running Shoes 2020',
        category: 'Trainning',
        imageUrl: 'assets/images_basketball/fortarun.png',
        price: 45.40),

    Product(
        name: 'FitBounce Trainers',
        category: 'Trainning',
        imageUrl: 'assets/images_basketball/fitbounce.png',
        price: 286.75
    ),


    Product(
        name: 'Faito Summer.RDY Tokyo Shoes',
        category: 'Trainning',
        imageUrl: 'assets/images_basketball/faito.png',
        price: 92.72),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For You',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 650,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final categoryTrainning = categoriesTraining[index];
                return Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Image.asset(
                       categoryTrainning.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoryTrainning.category,
                              style: const TextStyle(
                                  color: Color(0xff999999),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: SizedBox(
                                width: 170,
                                child: Text(
                                  categoryTrainning.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                '\$ ${categoryTrainning.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  color: Color(0xff2C96F1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: categoriesTraining.length,
            ),
          ),
        ],
      ),
    );
  }
}

class BasketballShoes extends StatelessWidget {
  const BasketballShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For You',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 650,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ultra.png',
                        fit: BoxFit.cover,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Running',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: SizedBox(
                                width: 170,
                                child: Text(
                                  'Ultra 4D 5 Shoes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Text(
                                '\$ 285.73',
                                style: TextStyle(
                                  color: Color(0xff2C96F1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class FootballShoes extends StatelessWidget {
  const FootballShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For You',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 650,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 120,
                  height: 120,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ultra.png',
                        fit: BoxFit.cover,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Running',
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: SizedBox(
                                width: 170,
                                child: Text(
                                  'Ultra 4D 5 Shoes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Text(
                                '\$ 285.73',
                                style: TextStyle(
                                  color: Color(0xff2C96F1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 30,
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

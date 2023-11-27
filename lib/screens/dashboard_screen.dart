import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, String>> skinTypes = [
    {'name': 'Normal',
      'description': 'Deskripsi: Tidak terlalu berminyak atau terlalu kering.',
      'ciri-ciri': 'Ciri-ciri: Poros halus, tidak ada masalah khusus.'
    },
    {'name': 'Dry',
      'description': 'Deskripsi: Cenderung kekurangan kelembaban.',
      'ciri-ciri': 'Ciri-ciri: Kulit kering, bersisik, terasa tegang.'
    },
    {'name': 'Oily',
      'description': 'Deskripsi: Memproduksi sebum berlebihan.',
      'ciri-ciri': 'Ciri-ciri: Kilap berlebihan, pori-pori membesar, rentan terhadap jerawat.'
    },
    {'name': 'Combination',
      'description': 'Deskripsi: Sebagian area wajah kering, sebagian berminyak.',
      'ciri-ciri': 'Ciri-ciri: Kering di beberapa area seperti pipi, tapi berminyak di T-zone (dahi, hidung, dagu).'
    },
    {'name': 'Sensitive',
      'description': 'Deskripsi: Mudah iritasi dan merah.',
      'ciri-ciri': 'Ciri-ciri: Rasa terbakar atau gatal, mungkin rentan terhadap alergi.'
    },
  ];

  final List<Map<String, String>> products = [
    {'name': 'Npure Toner',
      'image': 'https://cf.shopee.co.id/file/533c0283f8c326d2cf04b78dacb3bfc0',
      'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {'name': 'Skintific Moist',
      'image': 'https://cf.shopee.co.id/file/c4e998cde2a208a0b40d88a76bfaa08c',
      'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {'name': 'Somethinc Serum',
      'image': 'https://cdn1.productnation.co/optimized/1024w/stg/sites/5/5efd9ebae05b9.jpeg',
      'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {'name': 'Cetaphil Cleanser',
      'image': 'https://images.chickadvisor.com/item/3261/original/61b49a1014aa5a8b42fff33507441c7e.jpg',
      'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {'name': 'Facetology SS',
      'image': 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjZOMQSq4uj6R1B4Ge-4BGCN4Wty0_JGyeTrAq8EkRd5bXI8-Fc-n4cYiI8K7araadX_xVR6w8-IRTGoDjUweVAZnry6SmK0bJWQHRrwZjPj1rnqWzlx9J3Hati6unHykQ2RgU9GQ49r9_r4FRKpySF8xQrmMjGMIwq8XTQQh7GYzqwrdwQHXev8Qn_6w/s1600/IMG-20220817-WA0017.jpg',
      'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
    {'name': 'Whitelab Cream',
      'image': 'https://static.sehatq.com/content/review/product/image/872520220518102214.jpeg',
      'details': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header Section
            Text(
              'Halo, Girls!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Bagaimana kondisi kulitmu sekarang?',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 24),

            // ExpansionTile untuk Skin Type
            ExpansionTile(
              title: Text(
                'Mana skin type kamu',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              children: [
                // Skin Type Cards
                SizedBox(
                  height: 150.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: skinTypes.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 300,
                        child: Card(
                          elevation: 4.0,
                          color: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  skinTypes[index]['name']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  skinTypes[index]['description']!,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  skinTypes[index]['ciri-ciri']!,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            // Product List Section
            SizedBox(height: 24),
            Text(
              'Produk Pilihan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigate to the product detail screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                            productName: products[index]['name']!,
                            productImage: products[index]['image']!,
                            productDetails: products[index]['details']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4.0,
                      color: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              products[index]['name']!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Image.network(
                              products[index]['image']!,
                              height: 100,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Text(
                'Skincare App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Cek Produk'),
              onTap: () {
                // Tambahkan logika navigasi untuk Home
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Skincare Tips'),
              onTap: () {
                // Tambahkan logika navigasi untuk Home
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Apa Kata Mereka?'),
              onTap: () {
                // Tambahkan logika navigasi untuk Profile
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profil'),
              onTap: () {
                // Tambahkan logika navigasi untuk Settings
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productDetails;

  ProductDetailScreen({
    required this.productName,
    required this.productImage,
    required this.productDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.network(
              productImage,
              height: 300,
              width: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              productDetails,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

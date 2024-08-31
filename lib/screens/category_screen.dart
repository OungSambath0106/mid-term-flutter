import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<bool> _favorites = List.generate(8, (index) => false);

  void _toggleFavorite(int index) {
    setState(() {
      _favorites[index] = !_favorites[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, // Set the back button color to black
        ),
        title: Center(
          child: Image.asset(
            'assets/images/nike.png',
            width: 60.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/filter.svg',
              width: 24.0,
              height: 24.0,
            ),
            onPressed: () {
              // Handle right icon press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Search Input Field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    fillColor:
                        Colors.white, // Sets the background color to white
                    filled: true, // Enables the background color
                  ),
                  onChanged: (value) {
                    // Handle search input change
                  },
                ),
              ),
            ),

            // Subcategories
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0), // Add padding around the SizedBox
              child: SizedBox(
                height: 50, // Adjust height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  children: [
                    _buildSubCategoryItem('NIKE', Colors.white, Colors.blue),
                    _buildSubCategoryItem('ADIDAS', Colors.white, Colors.black),
                    _buildSubCategoryItem('VANS', Colors.white, Colors.black),
                    _buildSubCategoryItem('PUMA', Colors.white, Colors.black),
                    _buildSubCategoryItem(
                        'NEW BALANCE', Colors.white, Colors.black),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0), // Horizontal padding of 10px
              child: Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GridView.count(
                        childAspectRatio: 0.8,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          // Container 1
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes1.png',
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Jordan',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 42',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$799',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[0]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[0]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(0),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 2
                          Container(
                            margin: const EdgeInsets.fromLTRB(2.5, 0, 0, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes2.png',
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Jordan',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 40',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$749',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[1]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[1]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(1),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 3
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes3.png', // Replace with the correct image path
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Max',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 41',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$699',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[2]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[2]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(2),
                                    ),
                                  ),
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 4
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes4.png', // Replace with the correct image path
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Max',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 41',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$699',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[3]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[3]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(3),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 5
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes5.png', // Replace with the correct image path
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Max',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 41',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$699',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[4]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[4]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(4),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 6
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes6.png', // Replace with the correct image path
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Max',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 41',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$699',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[5]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[5]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(5),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 7
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes7.png', // Replace with the correct image path
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Max',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 41',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$699',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[6]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[6]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(6),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container 8
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2.5, 5),
                            child: Card(
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  // Main content of the card
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Image for the shoes
                                        Image.asset(
                                          'assets/images/nikeshoes8.png', // Replace with the correct image path
                                          width: 170,
                                          height: 100,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        // Text aligned to the left
                                        const Text(
                                          'Nike',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Text(
                                          'Air Max',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        const Text(
                                          'Size: 41',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Price label at the bottom left
                                  const Positioned(
                                    left: 12.0,
                                    bottom: 12.0,
                                    child: Text(
                                      '\$699',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  // Heart icon at the top right
                                  Positioned(
                                    top: 8.0,
                                    right: 12.0,
                                    child: IconButton(
                                      icon: Icon(
                                        _favorites[7]
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: _favorites[7]
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () => _toggleFavorite(7),
                                    ),
                                  ),
                                  // Shopping cart button at the bottom right
                                  Positioned(
                                    right: 12.0,
                                    bottom: 0.0,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        // Add your onPressed functionality here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      String categoryName, String imagePath, Color backgroundColor) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 5),
      ),
      child: Center(
        child: ClipOval(
          child: SizedBox(
            width: 30, // Diameter of the circle
            height: 40, // Height of the image
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubCategoryItem(
      String subCategoryName, Color subBackgroundColor, Color textColor) {
    return Container(
      width: 120, // Adjust width as needed
      height: 80, // Adjust height as needed
      margin: const EdgeInsets.only(right: 15, bottom: 15),
      decoration: BoxDecoration(
        color: subBackgroundColor,
        border: Border.all(color: Colors.white, width: 5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          subCategoryName,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

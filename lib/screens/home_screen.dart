import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mid_term/screens/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<bool> _favorites = List.generate(4, (index) => false);

  void _toggleFavorite(int index) {
    setState(() {
      _favorites[index] = !_favorites[index];
    });
  }

  int _selectedIndex = 0; // Initialize selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0.0,
        leadingWidth:
            100, // Increase the space allocated for the leading widget
        leading: Padding(
          padding:
              const EdgeInsets.only(left: 10.0), // Add left padding of 10px
          child: SizedBox(
            width: 50.0, // Increase the width
            height: 20.0, // Increase the height
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain, // Use contain or cover
            ),
          ),
        ),
        title: const Text(''), // Empty title
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/noti.svg',
              width: 24.0,
              height: 24.0,
            ),
            onPressed: () {},
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
            // Image Banner
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0), // Horizontal padding of 10px
              child: Column(
                children: <Widget>[
                  // Banner Image
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(12.0), // Banner border radius
                    ),
                    clipBehavior: Clip
                        .antiAlias, // Ensures the border radius clips the image
                    child: Image.asset(
                      'assets/images/banner.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 180,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  // Category Container Row
                  Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0), // Adjust padding as needed
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Categories",
                              style: TextStyle(
                                fontSize: 18.0, // Adjust font size as needed
                                fontWeight:
                                    FontWeight.bold, // Adjust font weight
                              ),
                            ),
                            Text(
                              "Show All",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight
                                    .w700, // Adjust font size as needed
                                color:
                                    Colors.blue, // Adjust text color as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height:
                              12.0), // Adds spacing between the title and the categories
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to CategoryScreen
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CategoryScreen()),
                                    );
                                  },
                                  child: Container(
                                    width: 80.0,
                                    height: 80.0,
                                    margin: const EdgeInsets.only(right: 10.0),
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Background color of the container
                                      borderRadius: BorderRadius.circular(
                                          360.0), // Makes the container circular
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                          10.0), // Adds padding around the image
                                      child: Image.asset(
                                        'assets/images/nike.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        5.0), // Space between the container and the title
                                Container(
                                  margin: const EdgeInsets.only(
                                      right:
                                          10.0), // Adds right margin to the text
                                  child: const Text(
                                    'NIKE',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the container
                                    borderRadius: BorderRadius.circular(
                                        360.0), // Makes the container circular
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        10.0), // Adds padding around the image
                                    child: Image.asset(
                                      'assets/images/adidas.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        5.0), // Space between the container and the title
                                Container(
                                  margin: const EdgeInsets.only(
                                      right:
                                          10.0), // Adds right margin to the text
                                  child: const Text(
                                    'ADIDAS',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the container
                                    borderRadius: BorderRadius.circular(
                                        360.0), // Makes the container circular
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        8.0), // Adds padding around the image
                                    child: Image.asset(
                                      'assets/images/nb.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        5.0), // Space between the container and the title
                                Container(
                                  margin: const EdgeInsets.only(
                                      right:
                                          10.0), // Adds right margin to the text
                                  child: const Text(
                                    'NEW BALANCE',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the container
                                    borderRadius: BorderRadius.circular(
                                        360.0), // Makes the container circular
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        6.0), // Adds padding around the image
                                    child: Image.asset(
                                      'assets/images/vans.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        5.0), // Space between the container and the title
                                Container(
                                  margin: const EdgeInsets.only(
                                      right:
                                          10.0), // Adds right margin to the text
                                  child: const Text(
                                    'VANS',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the container
                                    borderRadius: BorderRadius.circular(
                                        360.0), // Makes the container circular
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        6.0), // Adds padding around the image
                                    child: Image.asset(
                                      'assets/images/puma.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        5.0), // Space between the container and the title
                                Container(
                                  margin: const EdgeInsets.only(
                                      right:
                                          10.0), // Adds right margin to the text
                                  child: const Text(
                                    'PUMA',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Add more categories as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height:
                          22.0), // Adds spacing between the categories and the GridView
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Title Row
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Popular",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Show All",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // GridView
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SvgPicture.asset(
                'assets/icons/home.svg',
                width: 24.0,
                height: 24.0,
                color: _selectedIndex == 0
                    ? Colors.black
                    : Colors.grey, // Change color based on selected index
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SvgPicture.asset(
                'assets/icons/fav.svg',
                width: 24.0,
                height: 24.0,
                color: _selectedIndex == 1
                    ? Colors.black
                    : Colors.grey, // Change color based on selected index
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SvgPicture.asset(
                'assets/icons/noti.svg',
                width: 24.0,
                height: 24.0,
                color: _selectedIndex == 2
                    ? Colors.black
                    : Colors.grey, // Change color based on selected index
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SvgPicture.asset(
                'assets/icons/profile.svg',
                width: 24.0,
                height: 24.0,
                color: _selectedIndex == 3
                    ? Colors.black
                    : Colors.grey, // Change color based on selected index
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex, // Tracks the selected item
        selectedItemColor: Colors.black,
        onTap: _onItemTapped, // Handles item tap
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, // Hides labels for selected items
        showUnselectedLabels: false,
      ),
    );
  }
}

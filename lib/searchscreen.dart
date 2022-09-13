import 'package:flutter/material.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({Key? key}) : super(key: key);

  @override
  State<searchscreen> createState() => _searchscreenState();


}


class _searchscreenState extends State<searchscreen> {
  @override



  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.lightGreen,
            Colors.green,
          ],
        )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.brown,
    title: const Text('Lottery App Search'),
    actions: [
    // Navigate to the Search Screen
    IconButton(
    onPressed: () => Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const SearchPage())),
    icon: const Icon(Icons.search))
    ],
    ),
    ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.lightGreen,
            Colors.green,
          ],
        )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.brown,
          // The search area here
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Search...',
                      border: InputBorder.none),
                ),
              ),
            )),
      ),
    );


  }
}
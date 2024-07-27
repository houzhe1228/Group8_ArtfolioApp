import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'artwork_data.dart';
import 'art_search.dart';
import 'upload_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Artwork> displayedEntries = artworks;

  void updateSearchResults(String query) {
    setState(() {
      displayedEntries = artworks.where((artwork) =>
        artwork.title.toLowerCase().contains(query.toLowerCase())
      ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artfolio Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final selectedResult = await showSearch(
                context: context,
                delegate: ArtSearch(artworks.map((artwork) => artwork.title).toList(), updateSearchResults),
              );
              if (selectedResult != null) {
                int artIndex = artworks.indexWhere((artwork) => artwork.title == selectedResult);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailsScreen(artIndex: artIndex)
                ));
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.upload_file),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => UploadScreen()
              ));
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProfileScreen(artistName:'Your Artist Name') // 传递一个示例艺术家名称
              ));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: displayedEntries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(displayedEntries[index].imageUrl, width: 56, height: 56, errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            }),
            title: Text(displayedEntries[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(artIndex: index)),
              );
            },
          );
        },
      ),
    );
  }
}

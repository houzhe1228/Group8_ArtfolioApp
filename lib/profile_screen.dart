import 'package:flutter/material.dart';
import 'artwork_data.dart';
import 'artist_data.dart'; // 确保你将上面的数据保存在这个文件
import 'details_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String artistName;

  ProfileScreen({required this.artistName});

  @override
  Widget build(BuildContext context) {
    final artist = artists.firstWhere((artist) => artist.name == artistName);

    return Scaffold(
      appBar: AppBar(
        title: Text("Artist Profile"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              artist.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(artist.bio),
            SizedBox(height: 20),
            Text(
              "Artworks:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Column(
              children: artist.artworks.map((title) {
                final artwork = artworks.firstWhere((art) => art.title == title);
                return ListTile(
                  leading: Image.asset(artwork.imageUrl, width: 56, height: 56, errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error);
                  }),
                  title: Text(artwork.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(artIndex: artworks.indexOf(artwork))),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

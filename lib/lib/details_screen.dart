import 'package:flutter/material.dart';
import 'feedback_screen.dart';
import 'artwork_data.dart';
import 'profile_screen.dart';

class DetailsScreen extends StatelessWidget {
  final int artIndex;  
  DetailsScreen({required this.artIndex});

  @override
  Widget build(BuildContext context) {
    final artwork = artworks[artIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(artwork.title),  
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(artwork.imageUrl, fit: BoxFit.cover), // 直接使用Image.asset加载本地图片
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(artwork.description),  // 显示艺术作品描述
                  SizedBox(height: 10),
                  Text('Artist: ${artwork.author}', style: TextStyle(fontStyle: FontStyle.italic)),  // 显示艺术家名称
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(artistName: artwork.author)));  // 跳转到艺术家个人资料页面
                    },
                    child: Text('View Artist Profile'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackScreen(artIndex: artIndex)));  // 跳转到反馈屏幕
              },
              child: Text('View Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}

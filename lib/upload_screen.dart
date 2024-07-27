import 'package:flutter/material.dart';
import 'database_helper.dart';

class UploadScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Artwork'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            ElevatedButton(
              onPressed: () async {
                final dbHelper = DatabaseHelper.instance;
                await dbHelper.insertArtwork({
                  'title': titleController.text,
                  'description': descriptionController.text,
                  'imageUrl': 'assets/images/art0.jpg', // 你可以根据需要修改
                  'author': 'Your Artist Name'
                });

                print('Uploading ${titleController.text}');
                Navigator.pop(context); // 上传完毕后返回主界面
              },
              child: Text('Upload'),
            )
          ],
        ),
      ),
    );
  }
}

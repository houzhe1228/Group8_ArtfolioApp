// 文件位置：lib/image_helper.dart
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ImageHelper {
  Future<String> getImagePath(String imageName) async {
    final directory = await getApplicationDocumentsDirectory(); // 获取应用的文档目录
    return '${directory.path}/$imageName'; // 构建图片的完整路径
  }
}

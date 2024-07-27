import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('artfolio.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const sql = '''
      CREATE TABLE artworks (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        imageUrl TEXT,
        author TEXT
      );
    ''';
    await db.execute(sql);
  }

  Future<void> insertArtwork(Map<String, dynamic> artwork) async {
    final db = await instance.database;
    await db.insert('artworks', artwork);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}

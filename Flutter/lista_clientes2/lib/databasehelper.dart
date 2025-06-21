import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'product.dart';

class Databasehelper {
  static final Databasehelper _instance = Databasehelper._internal();
  factory Databasehelper() => _instance;

  static Database? _database;

  Databasehelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'product.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, price REAL, description TEXT, mail TEXT)",
        );
      },
    );
  }

  Future<void> insertProduct(Product product) async {
    final db = await database;
    await db.insert(
      "products",
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("Producto insertado: ${product.name}");
  }

  Future<List<Product>> getProducts() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query("products");
    return List.generate(maps.length, (i) {
      return Product.fromMap(maps[i]);
    });
  }

  Future<void> updateProduct(Product product) async {
    final db = await database;
    await db.update(
      "products",
      product.toMap(),
      where: "id = ?",
      whereArgs: [product.id],
    );
  }

  Future<void> deleteProduct(int id) async {
    final db = await database;
    await db.delete("products", where: "id = ?", whereArgs: [id]);
    print("Product deleted: $id");
  }
}

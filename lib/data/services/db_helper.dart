// import 'package:audionix_book/models/bookmark_model.dart';
// import 'package:sqflite/sqflite.dart';

// class DBHelper {
//   static Database? _database;
//   static const _databaseName = 'audionix.db';
//   static const int _dbVersion = 1;
//   static const String bookmarksTable = 'bookmarksTable';

//   // Make this a singleton class.
//   DBHelper._privateConstructor();
//   static final DBHelper instance = DBHelper._privateConstructor();

//   // Only allow a single open connection to the database.
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }

//   Future<Database> _initDatabase() async {
//     String path = '${await getDatabasesPath()}$_databaseName';
//     return await openDatabase(
//       path,
//       version: _dbVersion,
//       onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
//       onCreate: _onCreate,
//     );
//   }

//   // Create the table with the specified columns.
//   static Future _onCreate(Database db, int version) async {
//     await db.execute('''
//                 CREATE TABLE $bookmarksTable (
//                     $idBookmarkS INTEGER PRIMARY KEY AUTOINCREMENT,
//                     $idBookS TEXT, 
//                     $audioPositionS INTEGER,
//                     $bookmarkDateS TEXT
//                   )
//                 ''');
//   }

//   Future<int> insertNewBookmark(BookmarkModel? bookmark) async {
//     Database db = await instance.database;
//     return await db.insert(
//       bookmarksTable,
//       bookmark!.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<List<BookmarkModel>> queryBookmarks(String bookId) async {
//     Database db = await instance.database;
//     var bookmarkList = <BookmarkModel>[];
//     var bmList = await db.query(bookmarksTable, where: '$idBookS = ?', whereArgs: [bookId]);
//     bookmarkList.addAll(bmList.map((jsonBookmark) => BookmarkModel.fromMap(jsonBookmark)).toList());
//     return bookmarkList;
//   }

//   Future<int> deleteBookmarkFromDB(BookmarkModel bookmark) async {
//     Database db = await instance.database;
//     return await db.delete(
//       bookmarksTable,
//       where: 'id_bookmark = ?',
//       whereArgs: [bookmark.idBookmark],
//     );
//   }
// }

import 'package:banking_app/Data/Database/LocalStorage.dart';
import 'package:banking_app/Data/Models/User.dart';
import 'package:sqflite/sqflite.dart';

class UserDatabaseRepo
{
  final DatabaseHandler _databaseHandler;

  UserDatabaseRepo(this._databaseHandler);
  Future<List<User>> retrieveItems() async {
    final Database db = await _databaseHandler.initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('Users');
    return queryResult.map((e) => User.fromJson(e)).toList();
  }

  Future<void> insertItems() async {
    final Database db = await _databaseHandler.initializeDB() ;
    await db.insert('Users', User(id: "0", name: "Ahmed Mostafa", email: "Ahmed@gmail.com", phone: "01153548987", country: "Egypt", balance: 6000).toJson());
    await db.insert('Users', User(id: "1", name: "Karry Berry", email: "Karry@gmail.com", phone: "01149548987", country: "England", balance: 5500).toJson());
    await db.insert('Users', User(id: "2", name: "Jack Hugkman", email: "Jack@gmail.com", phone: "01693548987", country: "Denmark", balance: 12000).toJson());
    await db.insert('Users', User(id: "3", name: "Hary Mag", email: "Hary@gmail.com", phone: "01158548987", country: "Angola", balance: 500).toJson());
    await db.insert('Users', User(id: "4", name: "Wilson Wilson", email: "Wilson@gmail.com", phone: "01123548987", country: "USA", balance: 2000).toJson());
    await db.insert('Users', User(id: "5", name: "Karlos Gray", email: "Karlos@gmail.com", phone: "01126848987", country: "Spain", balance: 20000).toJson());
    await db.insert('Users', User(id: "6", name: "Leo Thomas", email: "Leo@gmail.com", phone: "01148548987", country: "France", balance: 300).toJson());
    await db.insert('Users', User(id: "7", name: "Mohamed Yassien", email: "Mohamed@gmail.com", phone: "01163548987", country: "Italy", balance: 80000).toJson());
    await db.insert('Users', User(id: "8", name: "Raya Luis", email: "Raya@gmail.com", phone: "01123548987", country: "England", balance: 1600).toJson());
  }

  Future<void> deleteItem(String id) async {
    final db = await _databaseHandler.initializeDB();
    await db.delete(
      'User',
      where: "id = ?",
      whereArgs: [id],
    );
  }
  Future<void> updateItem(String text,String id) async {
    final db = await _databaseHandler.initializeDB();
    await db.rawUpdate('UPDATE Users SET balance = ? WHERE id = ?', [text, id]);
  }
}
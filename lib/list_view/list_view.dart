import 'package:Flutter_project/user_management/user.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_project/add_edit_user/add_edit_user_screen.dart';
import 'package:Flutter_project/database/my_database.dart';
import 'package:Flutter_project/user_management/user.dart';

class UserListPage extends StatefulWidget {
  final bool isFavourite;

  const UserListPage({Key? key, this.isFavourite = false}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  late User userObj;
  List<Map<String, dynamic>> allUsers = [];
  List<Map<String, dynamic>> filteredUsers = [];
  final TextEditingController _searchController = TextEditingController();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeUser();
    _searchController.addListener(_filterUsers);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _initializeUser() async {
    userObj = await User.create();
    await _loadUsers();
  }

  Future<void> _loadUsers() async {
    if (widget.isFavourite) {
      allUsers = await userObj.getFavouriteUsers();
    } else {
      allUsers = await userObj.getUsers();
    }
    _filterUsers();
  }

  void _filterUsers() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      isLoading = false;
      filteredUsers = allUsers.where((user) {
        return user[MyDatabase.NAME].toString().toLowerCase().contains(query) ||
            user[MyDatabase.CITY].toString().toLowerCase().contains(query) ||
            user[MyDatabase.EMAIL].toString().toLowerCase().contains(query) ||
            user[MyDatabase.MOBILE_NUMBER].toString().toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isFavourite ? 'Favorite Users' : 'User List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search users...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : _buildUserList(),
          ),
        ],
      ),
    );
  }

  Widget _buildUserList() {
    if (filteredUsers.isEmpty) {
      return Center(
        child: Text(
          "No Users Found",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }
    return ListView.builder(
      itemCount: filteredUsers.length,
      itemBuilder: (context, index) {
        final user = filteredUsers[index];
        return _buildUserCard(user);
      },
    );
  }

  Widget _buildUserCard(Map<String, dynamic> user) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () => _editUser(user),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).primaryColor,
                child: Text(
                  user[MyDatabase.NAME][0].toUpperCase(),
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user[MyDatabase.NAME],
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Text(user[MyDatabase.CITY]),
                    Text(user[MyDatabase.MOBILE_NUMBER].toString()),
                  ],
                ),
              ),
              Column(
                children: [
                  _buildFavoriteButton(user),
                  SizedBox(height: 8),
                  _buildDeleteButton(user),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFavoriteButton(Map<String, dynamic> user) {
    return IconButton(
      icon: Icon(
        user[MyDatabase.IS_FAVOURITE] == 1 ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () async {
        await userObj.toggleFavourite(userId: user[MyDatabase.USER_ID]);
        await _loadUsers();
      },
    );
  }

  Widget _buildDeleteButton(Map<String, dynamic> user) {
    return IconButton(
      icon: Icon(Icons.delete, color: Colors.red),
      onPressed: () => _showDeleteConfirmation(user),
    );
  }

  void _showDeleteConfirmation(Map<String, dynamic> user) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Delete User"),
        content: Text("Are you sure you want to delete this user?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () async {
              await userObj.deleteUser(userId: user[MyDatabase.USER_ID]);
              Navigator.pop(context);
              await _loadUsers();
            },
            child: Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _editUser(Map<String, dynamic> user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserEntryPage(userDetails: user),
      ),
    ).then((value) async {
      if (value != null) {
        await userObj.editUser(value);
        await _loadUsers();
      }
    });
  }
}

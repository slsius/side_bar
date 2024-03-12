import "package:flutter/material.dart";

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Name'), 
            accountEmail: Text('Test@mail.com'),
            currentAccountPicture: CircleAvatar(
              child:ClipOval(
                child: Image.network(
                  'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              )
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: ()=>Null,
          ),
          ListTile(
            title: Text('List'),
            onTap: ()=>Null,
          ),
          ListTile(
            title: Text('Map'),
            onTap: ()=>Null,
          ),
          ListTile(
            title: Text('Search'),
            onTap: ()=>Null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('My Fav'),
            onTap: ()=>Null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Today Notification'),
            onTap: ()=>Null,
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('About Us'),
            onTap: ()=>Null,
          ),
        ],
      ),
    );
  }
}
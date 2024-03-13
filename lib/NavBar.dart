import "package:flutter/material.dart";

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Name'), 
            accountEmail: const Text('Test@mail.com'),
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
            title: const Text('Home'),
            onTap: ()=>Null,
          ),
          ListTile(
            title: const Text('List'),
            onTap: ()=>Null,
          ),
          ListTile(
            title: const Text('Map'),
            onTap: ()=>Null,
          ),
          ListTile(
            title: const Text('Search'),
            onTap: ()=>Null,
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('My Fav'),
            onTap: ()=>Null,
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Today Notification'),
            onTap: ()=>Null,
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('About Us'),
            onTap: ()=>Null,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text('Ma Garderie',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
            ListTile(leading: const Icon(Icons.home), title: const Text('Accueil'), onTap: () {}),
            ListTile(leading: const Icon(Icons.restaurant_menu), title: const Text('Menus'), onTap: () {}),
            ListTile(leading: const Icon(Icons.info), title: const Text('À propos'), onTap: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Padding(
      padding: EdgeInsets.all(16),
      child: Text('Menus du jour',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    ),
    Expanded(
      child: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (context, index) {
          final menu = menus[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: ListTile(
              leading: Text(menu['icone'], style: const TextStyle(fontSize: 32)),
              title: Text(menu['titre']),
              subtitle: Text(menu['description']),
              onTap: () {},
            ),
          );
        },
      ),
    ),
  ],
),
    );
  }
}
const List<Map<String, dynamic>> menus =[
     {
       "id": 1,
       "titre": "Petit déjeuner",
       "description": "Lait, céréales et fruits",
       "icone": "🥣"
     },
     {
       "id": 2,
       "titre": "Déjeuner",
       "description": "Poulet, riz et légumes",
       "icone": "🍲"
     },
     {
       "id": 3,
       "titre": "Goûter",
       "description": "Biscuit et compote de pomme",
       "icone": "🍪"
     },
     {
       "id": 4,
       "titre": "Jus de fruits",
       "description": "Jus d'orange naturel",
       "icone": "🍊"
     },
     {
       "id": 5,
       "titre": "Fruits frais",
       "description": "Une sélection de fruits de saison",
       "icone": "🍎"
     }
   ];
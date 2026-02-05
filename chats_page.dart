import 'package:flutter/material.dart';
import 'package:whats_app_ui/details_page.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Chats')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200], // Light gray background color
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 20), // Adjust padding to vertically center text
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide.none, // No border color
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                _buildChip('All', true),
                const SizedBox(
                  width: 10,
                ),
                _buildChip('Unread', false),
                const SizedBox(
                  width: 10,
                ),
                _buildChip('Favorites', false),
                const SizedBox(
                  width: 10,
                ),
                _buildChip('Groups', false),
              ],
            ),
          ),
          Expanded(child: MyListView()),
        ],
      ),
    );
  }

  Widget _buildChip(String label, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey[200],
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle chip selection
          },
          borderRadius: BorderRadius.circular(25.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      'title': 'Arjun',
      'description': 'Hey! How are you?',
      'time': '10:30 AM',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF1-JxundonqHJJT1n-3mOuU0YzvwYvh_vDQ&s'
    },
    {
      'title': 'Priya',
      'description': 'Let\'s catch up later.',
      'time': '09:45 AM',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN9Qod2JH67jv7w0TUNqNA5OJVLkpi3mw6rw&s'
    },
    {
      'title': 'Ravi',
      'description': 'Meeting at 5 PM',
      'time': '08:20 AM',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&s'
    },
    {
      'title': 'Anjali',
      'description': 'Happy Birthday!',
      'time': 'Yesterday',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF1-JxundonqHJJT1n-3mOuU0YzvwYvh_vDQ&s'
    },
    {
      'title': 'Rakesh',
      'description': 'See you soon.',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1609042759065-d8dad38f5a9f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Neha',
      'description': 'What\'s up?',
      'time': '2:35 PM',
      'image': 'https://images.unsplash.com/photo-1600013228001-0d6202bf89e2?q=80&w=2122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Sanjay',
      'description': 'Call me back.',
      'time': '1:20 PM',
      'image': 'https://images.unsplash.com/photo-1616540389399-3033c4ba7072?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Meera',
      'description': 'Lunch at 1?',
      'time': '12:00 PM',
      'image': 'https://images.unsplash.com/photo-1712847333437-f9386beb83e4?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Vikram',
      'description': 'Good night!',
      'time': '11:30 PM',
      'image': 'https://plus.unsplash.com/premium_photo-1664882424754-ee3aeaa915cf?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Aarti',
      'description': 'Let\'s plan a trip.',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Karan',
      'description': 'Where are you?',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Suman',
      'description': 'Let\'s meet.',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Rohit',
      'description': 'Busy now, talk later.',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1521310192545-4ac7951413f0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Pooja',
      'description': 'Can you help me?',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Aman',
      'description': 'Where\'s the report?',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    },
    {
      'title': 'Geeta',
      'description': 'Happy anniversary!',
      'time': 'Yesterday',
      'image': 'https://images.unsplash.com/photo-1526948128573-703ee1aeb6fa?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    }
  ];

  MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.length,
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Divider(height: 0, color: Color.fromARGB(255, 228, 224, 224)),
      ),
      itemBuilder: (context, index) {
        final item = data[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ListTile(
            leading: ClipOval(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: Image.network(
                  item['image']!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(item['title']!),
            subtitle: Text(item['description']!),
            trailing: Text(
              item['time']!,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            contentPadding: const EdgeInsets.all(8.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(itemData: item),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  UpdatesPage({super.key});  // Removed const keyword

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
        // Removed actions from AppBar
      ),
      body: Column(
        children: <Widget>[
          // My Status list item
          ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1586200030872-7c282db51edb?fit=crop&w=200&h=200',  // Updated image
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text('My Status'),
            subtitle: const Text('Tap to add status update'),
            onTap: () {
              // Handle tap to add status update
              // For example, navigate to a new page or show a dialog
            },
          ),
          // Recent Updates text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Updates',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Expanded ListView for other status updates
          Expanded(
            child: ListView.separated(
              itemCount: _statusUpdates.length,
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Color.fromARGB(255, 222, 217, 217),
              ),
              itemBuilder: (context, index) {
                final status = _statusUpdates[index];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(status['avatar']!),
                  ),
                  title: Text(status['name']!),
                  subtitle: Text(status['status']!),
                  trailing: Text(status['timestamp']!),
                  onTap: () {
                    // Handle tap on the status item
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StatusDetailPage(status: status),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the FAB press, e.g., open the camera for new status
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.camera_alt, color: Colors.white),  // Changed to camera icon
      ),
    );
  }

  final List<Map<String, String>> _statusUpdates = [
    {
      'name': 'Riza',
      'status': 'Available',
      'timestamp': 'Today, 2:00 PM',
      'avatar': 'https://images.unsplash.com/photo-1600013228001-0d6202bf89e2?q=80&w=2122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'name': 'Maitri',
      'status': 'Busy',
      'timestamp': 'Yesterday, 5:30 PM',
      'avatar': 'https://images.unsplash.com/photo-1616540389399-3033c4ba7072?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'name': 'Dhruvi',
      'status': 'At Work',
      'timestamp': 'Today, 1:15 PM',
      'avatar': 'https://images.unsplash.com/photo-1712847333437-f9386beb83e4?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'name': 'Manshi',
      'status': 'On Vacation',
      'timestamp': 'Today, 10:30 AM',
      'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF1-JxundonqHJJT1n-3mOuU0YzvwYvh_vDQ&s',
    },
    {
      'name': 'Janvi',
      'status': 'Meeting',
      'timestamp': 'Yesterday, 4:00 PM',
      'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN9Qod2JH67jv7w0TUNqNA5OJVLkpi3mw6rw&s',
    },
    {
      'name': 'Hetvi',
      'status': 'Offline',
      'timestamp': 'Yesterday, 3:20 PM',
      'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&s',
    },
    {
      'name': 'Prachi',
      'status': 'At the Gym',
      'timestamp': 'Yesterday, 2:30 PM',
      'avatar': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF1-JxundonqHJJT1n-3mOuU0YzvwYvh_vDQ&s',
    },
    {
      'name': 'Mona',
      'status': 'Cooking',
      'timestamp': 'Yesterday, 1:50 PM',
      'avatar': 'https://images.unsplash.com/photo-1609042759065-d8dad38f5a9f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'name': 'Sarvesh',
      'status': 'Relaxing',
      'timestamp': 'Yesterday, 12:45 PM',
      'avatar': 'https://images.unsplash.com/photo-1547598117-9c9e6a75f1b5',
    },
    {
      'name': 'Dev',
      'status': 'Shopping',
      'timestamp': 'Yesterday, 11:30 AM',
      'avatar': 'https://images.unsplash.com/photo-1506748686214e9df14f2009e2',
    },
    {
      'name': 'Poojan',
      'status': 'Traveling',
      'timestamp': 'Yesterday, 10:00 AM',
      'avatar': 'https://images.unsplash.com/photo-1484809434387-1c78e9a315ed',
    },
    {
      'name': 'Deven',
      'status': 'Studying',
      'timestamp': 'Yesterday, 9:30 AM',
      'avatar': 'https://images.unsplash.com/photo-1489903640603-7b3d02e2a2f4',
    },
    {
      'name': 'Prathna',
      'status': 'Working from Home',
      'timestamp': 'Yesterday, 8:15 AM',
      'avatar': 'https://images.unsplash.com/photo-1549465481-1f5f9d69e2cb',
    },
    {
      'name': 'Rushil',
      'status': 'Playing Video Games',
      'timestamp': 'Yesterday, 7:00 AM',
      'avatar': 'https://images.unsplash.com/photo-1522757544936-d1a8aa779e08',
    },
  ];
}

class StatusDetailPage extends StatelessWidget {
  final Map<String, String> status;

  const StatusDetailPage({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(status['name']!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(status['avatar']!),
            ),
            const SizedBox(height: 20),
            Text(
              status['status']!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(status['timestamp']!),
          ],
        ),
      ),
    );
  }
}

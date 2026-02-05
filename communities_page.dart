import 'package:flutter/material.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  final List<Map<String, String>> _communities = [
    {
      'name': 'Flutter Developers',
      'description': 'Join us to discuss all things Flutter!',
      'avatar': 'https://example.com/flutter-avatar.jpg',
    },
    {
      'name': 'Tech Enthusiasts',
      'description': 'Talk about the latest in technology.',
      'avatar': 'https://example.com/tech-avatar.jpg',
    },
    {
      'name': 'Travel Lovers',
      'description': 'Share your travel experiences and tips.',
      'avatar': 'https://example.com/travel-avatar.jpg',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Community',
          style: TextStyle(fontSize: 18.0), // Smaller text size
        ),
        leading: IconButton(
          icon: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light background color for the icon
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.group,
                  color: Colors.black,
                  size: 24, // Adjust icon size as needed
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(2.0),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {
            // Handle the "Add Community" action
          },
        ),
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Removes shadow
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0), // Space below the AppBar
        child: Column(
          children: [
            // Display the group name with users icon
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light background color for the icon
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.group, // Users icon
                  color: Colors.black,
                  size: 28, // Adjust icon size as needed
                ),
              ),
              title: const Text(
                'Group Name',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Handle the group name item tap
              },
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(10.0),
                itemCount: _communities.length + 1, // +1 for the "View All" item
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  if (index == _communities.length) {
                    return ListTile(
                      leading: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black), // Smaller icon
                      title: const Text(
                        'View All',
                        style: TextStyle(fontSize: 14.0), // Smaller text size
                      ),
                      onTap: () {
                        // Handle "View All" action
                      },
                    );
                  }

                  final community = _communities[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(community['avatar']!),
                    ),
                    title: Text(community['name']!),
                    subtitle: Text(community['description']!),
                    tileColor: Colors.white, // White background for each item
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommunityDetailPage(community: community),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new community creation
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.add), // Floating action button color
      ),
    );
  }
}

class CommunityDetailPage extends StatelessWidget {
  final Map<String, String> community;

  const CommunityDetailPage({super.key, required this.community});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(community['name']!),
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Removes shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(community['avatar']!),
            ),
            const SizedBox(height: 16.0),
            Text(
              community['name']!,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(community['description']!),
            // Add more details and actions here
          ],
        ),
      ),
    );
  }
}



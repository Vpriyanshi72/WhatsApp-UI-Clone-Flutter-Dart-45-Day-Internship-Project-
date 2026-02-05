import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
   CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: _callLogs.length,
        separatorBuilder: (context, index) => const Divider(height: 1,color: Color.fromARGB(255, 222, 217, 217),),
        itemBuilder: (context, index) {
          final call = _callLogs[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(call['avatar']!),
            ),
            title: Text(call['name']!),
            subtitle: Text('${call['callType']} • ${call['timestamp']}'),
            trailing: call['callType'] == 'Missed'
                ? const Icon(
                    Icons.call_missed,
                    color: Colors.red,
                  )
                : Icon(
                    call['isVideoCall'] == true ? Icons.videocam : Icons.call,
                    color: Colors.green,
                  ),
            onTap: () {
              // Handle tap on list item, e.g., show call details
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new call action
        },
        child: const Icon(Icons.add_call),
      ),
    );
  }

  final List<Map<String, dynamic>> _callLogs = [
    {
      'name': 'Riza',
      'callType': 'Outgoing',
      'timestamp': 'Today, 2:00 PM',
      'avatar': 'https://images.unsplash.com/photo-1609042759065-d8dad38f5a9f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'Dhruvi',
      'callType': 'Missed',
      'timestamp': 'Yesterday, 5:30 PM',
      'avatar': 'https://images.unsplash.com/photo-1600013228001-0d6202bf89e2?q=80&w=2122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
    {
      'name': 'Janvi',
      'callType': 'Incoming',
      'timestamp': 'Today, 1:15 PM',
      'avatar': 'https://images.unsplash.com/photo-1616540389399-3033c4ba7072?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'Manshi',
      'callType': 'Outgoing',
      'timestamp': 'Today, 11:45 AM',
      'avatar': 'https://images.unsplash.com/photo-1521310192545-4ac7951413f0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
    {
      'name': 'Poojan',
      'callType': 'Missed',
      'timestamp': 'Yesterday, 4:00 PM',
      'avatar': 'https://images.unsplash.com/photo-1609042759065-d8dad38f5a9f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'Prachi',
      'callType': 'Incoming',
      'timestamp': 'Yesterday, 3:20 PM',
      'avatar': 'https://images.unsplash.com/photo-1600013228001-0d6202bf89e2?q=80&w=2122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
    {
      'name': 'Deven',
      'callType': 'Outgoing',
      'timestamp': 'Yesterday, 2:30 PM',
      'avatar': 'https://images.unsplash.com/photo-1616540389399-3033c4ba7072?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'Maitri',
      'callType': 'Missed',
      'timestamp': 'Yesterday, 1:50 PM',
      'avatar': 'https://images.unsplash.com/photo-1521310192545-4ac7951413f0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
    {
      'name': 'Hetvi',
      'callType': 'Incoming',
      'timestamp': 'Yesterday, 12:45 PM',
      'avatar': 'https://images.unsplash.com/photo-1609042759065-d8dad38f5a9f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'Mom',
      'callType': 'Outgoing',
      'timestamp': 'Yesterday, 11:30 AM',
      'avatar': 'https://images.unsplash.com/photo-1600013228001-0d6202bf89e2?q=80&w=2122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
    {
      'name': 'Dad',
      'callType': 'Missed',
      'timestamp': 'Yesterday, 10:00 AM',
      'avatar': 'https://images.unsplash.com/photo-1616540389399-3033c4ba7072?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'Sister',
      'callType': 'Incoming',
      'timestamp': 'Yesterday, 9:30 AM',
      'avatar': 'https://images.unsplash.com/photo-1521310192545-4ac7951413f0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
    {
      'name': 'Brother',
      'callType': 'Outgoing',
      'timestamp': 'Yesterday, 8:15 AM',
      'avatar': 'https://images.unsplash.com/photo-1609042759065-d8dad38f5a9f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': false,
    },
    {
      'name': 'mona',
      'callType': 'Incoming',
      'timestamp': 'Yesterday, 7:00 AM',
      'avatar': 'https://images.unsplash.com/photo-1600013228001-0d6202bf89e2?q=80&w=2122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isVideoCall': true,
    },
  ];
}


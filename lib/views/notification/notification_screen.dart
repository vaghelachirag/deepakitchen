import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  final controller = Get.put(NotificationController());

  String formatDate(String input) {
    final dateTime = DateTime.parse(input);
    return DateFormat('MMM dd, hh:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.green[700],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.notifications.length,
          itemBuilder: (context, index) {
            final notif = controller.notifications[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              elevation: 3,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    notif.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(notif.title, style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(notif.message),
                    SizedBox(height: 4),
                    Text(
                      formatDate(notif.timestamp),
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                isThreeLine: true,
              ),
            );
          },
        );
      }),
    );
  }
}
import 'package:get/get.dart';

import '../../models/notification/notification_model.dart';


class NotificationController extends GetxController {
  var notifications = <NotificationModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadNotifications();
  }

  void loadNotifications() {
    notifications.value = [
      NotificationModel(
        title: 'Order Confirmed',
        message: 'Your order #1023 has been confirmed!',
        timestamp: '2025-05-10 09:30',
        image: 'assets/images/banner2.png',
      ),
      NotificationModel(
        title: 'Out for Delivery',
        message: 'Your Thepla order is on the way!',
        timestamp: '2025-05-10 10:00',
        image: 'assets/images/banner2.png',
      ),
      NotificationModel(
        title: 'New Menu Item',
        message: 'Try our new Cheese Dhokla today!',
        timestamp: '2025-05-09 18:45',
        image: 'assets/images/banner2.png',
      ),
    ];
  }
}
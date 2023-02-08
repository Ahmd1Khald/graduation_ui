import 'package:flutter/material.dart';
import 'package:graduation_project/components/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => notificationDeniedBuilder(context),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: 10));
  }
}

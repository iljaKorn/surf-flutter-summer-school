import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surf_places/core/state_controller.dart';
import 'package:surf_places/features/onbording/screens/onboarding_screen_builder.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  final StateController c = Get.put(StateController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Text('My Settings'),
            Obx(
              () => Text('${c.onbordingIsComplited}'),
            ),
            Obx(
              () => SwitchListTile(
                title: Text('Уведомления'),
                value: c.onbordingIsComplited.value,
                onChanged: c.toggleNotifications,
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboardingScreenBuilder())),
                  },
              child: Text('start'),
            ),
          ],
        ),
      ),
    );
  }
}

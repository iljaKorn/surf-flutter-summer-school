import 'package:get/get.dart';

class StateController extends GetxController {
  var onbordingIsComplited = false.obs;

  void toggleNotifications(bool value) {
    onbordingIsComplited.value = value;
    // Здесь можно добавить логику сохранения в хранилище
  }
}

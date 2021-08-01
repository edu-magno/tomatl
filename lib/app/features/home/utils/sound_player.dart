import 'package:just_audio/just_audio.dart';

void playAlertSound(AudioPlayer player, String filePath) async {
  // file name can't have " " - or _
  await player.setAsset(filePath);
  await player.play(); // Waits until the clip has finished playing
}

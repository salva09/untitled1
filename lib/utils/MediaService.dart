import 'package:flutter_sound/flutter_sound.dart';

FlutterSoundRecorder _soundRecorder = FlutterSoundRecorder();
FlutterSoundPlayer _soundPlayer = FlutterSoundPlayer();

Future<void> startRecording() async {
  await _soundRecorder.openRecorder();
  await _soundRecorder.startRecorder(toFile: 'ruta_del_archivo_de_audio.wav');
}

Future<void> stopRecording() async {
  await _soundRecorder.stopRecorder();
  await _soundRecorder.closeRecorder();
}

Future<void> startPlayback() async {
  await _soundPlayer.openPlayer();
  await _soundPlayer.startPlayer(fromURI: 'ruta_del_archivo_de_audio.wav');
}

Future<void> stopPlayback() async {
  await _soundPlayer.stopPlayer();
  await _soundPlayer.closePlayer();
}

import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class AudioRepository {
  static final FlutterSoundRecorder _recorder = FlutterSoundRecorder();

  Future<void> record() async {
    await _recorder.startRecorder(toFile: 'recorded_file');
  }

  Future<void> stop() async {
    await _recorder.stopRecorder();
  }

  Future<bool> isAllowedRecording() async {
    final status = await Permission.microphone.request();
    return status == PermissionStatus.granted ? true : false;
  }
}

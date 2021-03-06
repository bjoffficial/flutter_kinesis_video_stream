import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kinesis_video_stream/flutter_kinesis_video_stream.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_kinesis_video_stream');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterKinesisVideoStream.platformVersion, '42');
  });
}

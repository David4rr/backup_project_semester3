// ignore_for_file: file_names, avoid_print

import 'dart:io';
import 'dart:math';

import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// late SharedPreferences s_prefs;
// var datauser = '';

// var namaDepan = '';

// String tdata = DateFormat("HH:mm:ss").format(DateTime.now());

// int random = 0, randomminmax = 0;
// double randomdouble = 0.00;

// int randomNumber() {
//   int random = Random().nextInt(1000000); //1000 is MAX value
//   //generate random number below 1000
//   return random;
// }

int random = Random().nextInt(4294967296);
final randomrandom = random.toString();

class MQTTClientManager {
  MqttServerClient client =
      MqttServerClient.withPort('159.223.72.149', randomrandom, 1883);

  Future<int> connect() async {
    client.logging(on: true);
    client.keepAlivePeriod = 999999999999999999;
    client.onConnected = onConnected;
    client.onDisconnected = onDisconnected;
    client.onSubscribed = onSubscribed;
    client.pongCallback = pong;

    final connMessage =
        MqttConnectMessage().startClean().withWillQos(MqttQos.atLeastOnce);
    client.connectionMessage = connMessage;

    try {
      await client.connect();
    } on NoConnectionException catch (e) {
      print('MQTTClient::Client exception - $e');
      client.disconnect();
    } on SocketException catch (e) {
      print('MQTTClient::Socket exception - $e');
      client.disconnect();
    }

    return 0;
  }

  void disconnect() {
    client.disconnect();
  }

  void subscribe(String topic) {
    client.subscribe(topic, MqttQos.atLeastOnce);
  }

  void onConnected() {
    print('MQTTClient::Connected');
    print(randomrandom);
  }

  void onDisconnected() {
    print('MQTTClient::Disconnected');
  }

  void onSubscribed(String topic) {
    print('MQTTClient::Subscribed to topic: $topic');
  }

  void pong() {
    print('MQTTClient::Ping response received');
  }

  void publishMessage(String topic, String message) {
    final builder = MqttClientPayloadBuilder();
    builder.addString(message);
    client.publishMessage(topic, MqttQos.exactlyOnce, builder.payload!);
  }

  Stream<List<MqttReceivedMessage<MqttMessage>>>? getMessagesStream() {
    return client.updates;
  }
}

// class datauser {
//   late SharedPreferences s_prefs;
//   var user = '';

//   _showSavedValue() async {
//     s_prefs = await SharedPreferences.getInstance();
//     // setState(() {
//     user = s_prefs.getString("KEY_1").toString();
//     // print(datauser);
//     namaDepan = (jsonDecode(user)['nama_depan']).toString();
//     // namaBelakang = (jsonDecode(datauser)['nama_belakang']).toString();
//     // asalInstitusi = (jsonDecode(datauser)['asal_institusi']).toString();
//     // kegiatan = (jsonDecode(datauser)['kegiatan']).toString();
//     // email = (jsonDecode(datauser)['email']).toString();
//     // print(datauser);
//     // namaLengkap = namaDepan + ' ' + namaBelakang;
//     // });
//   }
// }

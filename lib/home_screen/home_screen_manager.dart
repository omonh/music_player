import 'package:flutter/cupertino.dart';
import 'package:music_player/data/song_api.dart';
import 'package:music_player/service_location.dart';

class HomeScreenManager {
  final songListNotifer = ValueNotifier<List<String>>([]);

  final songApi = getIt<SongApi>();

  void updateSongs() async {
    final songs = await songApi.getSongs();
    songListNotifer.value = songs;

  }
}
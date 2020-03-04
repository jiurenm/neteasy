import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:netease_cloud_music/model/song.dart';

class PlaySongsModel with ChangeNotifier {
  AudioPlayer _audioPlayer = AudioPlayer();
  StreamController<String> _curPositionController = StreamController<String>.broadcast();

  List<Song> _songs = [];
  int curIndex = 0;
  Duration curSongDuration;
  AudioPlayerState _curState;

  List<Song> get allSongs => _songs;
  Song get curSong => _songs[curIndex];
  Stream<String> get curPositionStream => _curPositionController.stream;
  AudioPlayerState get curState => _curState;

  void init() {
    _audioPlayer.setReleaseMode(ReleaseMode.STOP);
    _audioPlayer.onPlayerStateChanged.listen((state) {
      _curState = state;
      if(state == AudioPlayerState.COMPLETED) {
        nextPlay();
      }
      notifyListeners();
    });
    _audioPlayer.onDurationChanged.listen((d) {
      curSongDuration = d;
    });
    _audioPlayer.onAudioPositionChanged.listen((Duration p) {
      sinkProgress(p.inMilliseconds > curSongDuration.inMilliseconds ? curSongDuration.inMilliseconds : p.inMilliseconds);
    });
  }

  // 歌曲进度
  void sinkProgress(int m){
    _curPositionController.sink.add('$m-${curSongDuration.inMilliseconds}');
  }

  // 播放一首歌
  void playSong(Song song) {
    _songs.insert(curIndex, song);
    play();
  }

  // 播放很多歌
  void playSongs(List<Song> songs, {int index}) {
    this._songs = songs;
    if (index != null) curIndex = index;
    play();
  }

  // 添加歌曲
  void addSongs(List<Song> songs) {
    this._songs.addAll(songs);
  }

  // 播放
  void play() {
    _audioPlayer.play(
        "https://music.163.com/song/media/outer/url?id=${this._songs[curIndex].id}.mp3");
  }

  // 暂停、恢复
  void togglePlay(){
    if (_audioPlayer.state == AudioPlayerState.PAUSED) {
      resumePlay();
    } else {
      pausePlay();
    }
  }

  // 暂停
  void pausePlay() {
    _audioPlayer.pause();
  }

  // 跳转到固定时间
  void seekPlay(int milliseconds){
    _audioPlayer.seek(Duration(milliseconds: milliseconds));
    resumePlay();
  }

  // 恢复播放
  void resumePlay() {
    _audioPlayer.resume();
  }

  // 下一首
  void nextPlay(){
    if(curIndex >= _songs.length){
      curIndex = 0;
    }else{
      curIndex++;
    }
    play();
  }

  // 上一首
  void prePlay(){
    if(curIndex <= 0){
      curIndex = _songs.length - 1;
    }else{
      curIndex--;
    }
    play();
  }

  @override
  void dispose() {
    super.dispose();
    _curPositionController.close();
    _audioPlayer.dispose();
  }
}
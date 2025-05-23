import 'package:flutter/material.dart';
import 'package:themoviedb/ui/Theme/app_colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieTrailerWidget extends StatefulWidget {
  final String youtubeKey;
  const MovieTrailerWidget({
    super.key,
    required this.youtubeKey,
  });

  @override
  State<MovieTrailerWidget> createState() => _MovieTrailerWidgetState();
}

class _MovieTrailerWidgetState extends State<MovieTrailerWidget> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: widget.youtubeKey,
      flags: const YoutubePlayerFlags(
        enableCaption: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final player = YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
    );
    return YoutubePlayerBuilder(
            player: player,
            builder: (context, player) {
              return Scaffold(
                backgroundColor: AppColors.mainDarkBlue,
                appBar: AppBar(title: Text('Трейлер'),),
                body: Center(
                  child: player,
                ),
              );
            });
  }
}

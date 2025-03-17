import 'package:flutter/material.dart';
import 'package:themoviedb/ui/widgets/news/news_widget_free_for_watch.dart';
import 'package:themoviedb/ui/widgets/news/news_widget_leaderboards.dart';
import 'package:themoviedb/ui/widgets/news/news_widget_popular.dart';
import 'package:themoviedb/ui/widgets/news/news_widget_trailers.dart';
import 'package:themoviedb/ui/widgets/news/news_widget_trandings.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const NewsWidgetPopular(),
        const NewsWidgetFreeToWatch(),
        const NewsWidgetTrailers(),
        const NewsWidgetTrandings(),
        const NewsWidgetLeaderboards(),
      ],
    );
  }
}
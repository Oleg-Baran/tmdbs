import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:themoviedb/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.actor).existsSync(), isTrue);
    expect(File(AppImages.contrebuter).existsSync(), isTrue);
    expect(File(AppImages.moviePlaceholder).existsSync(), isTrue);
    expect(File(AppImages.noImg).existsSync(), isTrue);
    expect(File(AppImages.recomendation).existsSync(), isTrue);
    expect(File(AppImages.topHeader).existsSync(), isTrue);
    expect(File(AppImages.topHeaderSubImage).existsSync(), isTrue);
    expect(File(AppImages.trailerBackground).existsSync(), isTrue);
    expect(File(AppImages.trailerPreview).existsSync(), isTrue);
    expect(File(AppImages.tvshowPlaceholder).existsSync(), isTrue);
  });
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/bookmarks_view_controller.dart';

class BookmarksView extends GetView<BookmarksViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BookmarksViewPage')),
      body: SafeArea(child: Text('BookmarksViewController')),
    );
  }
}

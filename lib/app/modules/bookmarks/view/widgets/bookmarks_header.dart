import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/medium_header_button.dart';
import 'package:medium_app_clone/app/modules/home/views/widgets/medium_home_header.dart';

class MediumBookmarksHeader extends MediumHomeHeader {
  const MediumBookmarksHeader({
    super.key,
    super.title = "your lists",
    super.showIcon = false,
    super.showButton = true,
    super.buttonWidget,
  });
}

import 'package:medium_app_clone/app/modules/bookmarks/view/widgets/medium_header_button.dart';

class NewListButton extends MediumButton {
  const NewListButton({
    super.key,
    required super.text,
    required super.backgroundColor,
    super.onPanThemeType = PanTheme.light,
    super.height = 30,
    super.width,
    super.onPressed,
  });
}

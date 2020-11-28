import 'package:cleanapp/app/interfaces/local_storage_interface.dart';
import 'package:cleanapp/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage storage;

  ChangeThemeViewModel({this.storage});

  final AppConfigModel config = AppConfigModel();

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }

  Future init() async {
    await storage.get('isDark').then((value) {
      if (value != null) config.themeSwitch.value = value;
    });
  }
}

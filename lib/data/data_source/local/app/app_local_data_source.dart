import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/data/data_source/data_source_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppLocalDataSource {
  String? getDisplayName();

  void setDisplayName({required String displayName});

  List<String>? getDramaIds();

  void setDramaIds({required List<String> dramaIds});

  void clear();
}

class AppLocalDataSourceImpl extends AppLocalDataSource {
  AppLocalDataSourceImpl({
    required this.prefs,
  });

  final SharedPreferences? prefs;

  @override
  String? getDisplayName() {
    return prefs?.getString("display_name");
  }

  @override
  void setDisplayName({required String displayName}) {
    prefs?.setString("display_name", displayName);
  }

  @override
  List<String>? getDramaIds() {
    return prefs?.getStringList("drama_ids");
  }

  @override
  void setDramaIds({required List<String> dramaIds}) {
    prefs?.setStringList("drama_ids", dramaIds);
  }

  @override
  void clear() {
    prefs?.clear();
  }
}

final appLocalDataSourceProvider = Provider<AppLocalDataSource>((ref) {
  return AppLocalDataSourceImpl(
    prefs: ref.watch(sharedPreferencesProvider),
  );
});

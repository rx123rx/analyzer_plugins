import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer_plugin/analyzer_plugin.dart';
import 'package:analyzer/dart/element/element.dart';

AnalyzerPlugin createPlugin() {
  return _AnotherPlugin();
}

class _AnotherPlugin extends AnalyzerPlugin<LibraryElementResult> {
  String get name => 'another_plugin';

  @override
  List<Diagnostics> run(LibraryElementResult result) {
    print('---_AnotherPlugin--- ${result.element}');
    return [];
    // throw StateError('Fake error to simulate exceptions in plugins');
  }
}

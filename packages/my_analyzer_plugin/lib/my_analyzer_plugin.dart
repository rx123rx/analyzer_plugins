import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer_plugin/analyzer_plugin.dart';
import 'package:analyzer/dart/element/element.dart';

AnalyzerPlugin createPlugin() {
  return _MyAnalyzerPlugin();
}

class _MyAnalyzerPlugin extends AnalyzerPlugin<LibraryElementResult> {
  @override
  String get name => 'my_dart_analyzer_plugin';

  @override
  List<Diagnostics> run(LibraryElementResult libraryElement) {
    final hasElementFunction = libraryElement.element.topLevelElements
        .any((element) => element.name == 'example');
    return [
      if (!hasElementFunction)
        Diagnostics(
          DiagnosticsType.warning,
          'All libraries must contain a global function named `example`',
        )
    ];
  }
}

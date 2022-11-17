import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';

abstract class AnalyzerPlugin<T extends SomeLibraryElementResult> {
  String get name;

  List<Diagnostics> run(T result);
}

enum DiagnosticsType { warning, error }

class Diagnostics {
  Diagnostics(this.type, this.message);

  final DiagnosticsType type;
  final String message;
}

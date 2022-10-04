//import 'dart:io';

import 'package:args/args.dart';
import 'package:pollsam/src/rest_server.dart';

/// Hauptprogramm.
/// Wertet Kommandozeilenargumente aus und startet den Server.
void main(List<String> args) async {
  final parser = ArgParser();
  parser.addFlag('help',
      abbr: 'h', negatable: false, help: 'Zeigt diese Meldung.');
  parser.addFlag('example',
      abbr: 'e', negatable: false, help: 'Zeigt ein Konfigurationsbeispiel.');
  parser.addOption('configuration',
      abbr: 'c',
      help: 'Die Konfigurationsdatei.',
      defaultsTo: '/etc/pollsam/pollsam.yaml');
  try {
    final results = parser.parse(args);
    if (results['help']) {
      try {
        try {
          print('''Aufruf: pollsam [mode] [options]
''');
        } catch (e, s) {
          print(s);
        }
      } catch (e, s) {
        print(s);
      }
    } else {
      final command = results.rest.isEmpty ? 'daemon' : results.rest[0];
      final pureArguments =
          results.rest.isEmpty ? <String>[] : results.rest.sublist(1);
      switch (command) {
        case 'daemon':
          RestServer.daemon(pureArguments, results);
          break;
        default:
          print('Unbekannter Modus: $command. Probiere --help');
          break;
      }
    }
  } on FormatException catch (exc) {
    print('+++ Fehlerhafte Option: $exc\nProbiere "--help"');
  }
}

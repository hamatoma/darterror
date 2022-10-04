import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:args/src/arg_results.dart';
import 'package:dart_bones/dart_bones.dart';

/// Starts an isolate instance on the channel [isolateToMainStream].
void runIsolate(SendPort isolateToMainStream) {
}

class RestServer {
  static BaseLogger? unittestLogger;
  BaseLogger logger = MemoryLogger(LEVEL_FINE);
  BaseConfiguration configuration = BaseConfiguration({}, globalLogger);
  var clientSessionTimeout = 15 * 60;
  String serviceName = 'pollsam';
  RestServer(
    int port,
    this.logger, );

   RestServer.fromConfig(String filename, {String serviceName = 'pollsam'}) {
    final logger2 = unittestLogger ?? MemoryLogger();
    configuration = Configuration.fromFile(filename, logger2);
  }

  void run() async {
    final cpus = Platform.numberOfProcessors;
    var count = configuration.asInt('threads', section: 'service') ?? cpus;
    count = count <= 0 ? 1 : count;
  }

  static void daemon(List<String> args, ArgResults results) {
    final service = args.isEmpty ? 'pollsam' : args[0];
    var filename = results['configuration'];
    if (!File(filename).existsSync()) {
      final server = RestServer.fromConfig(filename, serviceName: service);
      server.run();
    }
  }

}

/// Data class for an isolate instance.
class ServiceWorker {
  final BaseConfiguration configuration;
  final int threadId;
  final serviceName;
  ServiceWorker(this.threadId, this.configuration, this.serviceName);

  /// Handles the POST request.
  ///
  /// Retrieves the request name and calls the matching method to handle it.
  ///
  /// Returns the answer that should be transferred to the client: as string
  /// or as map.
  Future<String?> handlePost() async {
    return '';
  }

  /// Connects with address and port and wait for requests.
  Future listen() async {
  }
}

/// Data class to store the configuration data of a [ServiceWorker].
class WorkerParameters {
  int id;
  BaseConfiguration configuration;
  String serviceName;

  WorkerParameters(this.id, this.configuration, this.serviceName);

  /// Decodes a string built with asString() into an instance.
  factory WorkerParameters.fromString(String data) {
    return WorkerParameters(
        0, BaseConfiguration({}, MemoryLogger()), '');
  }

}

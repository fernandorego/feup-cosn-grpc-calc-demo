import 'package:grpc/grpc.dart';
import 'generated/calculator.pbgrpc.dart';

class CalculatorService {
  static final CalculatorClient _client = CalculatorClient(ClientChannel(
      'localhost',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<num> sum(num x, num y) {
    final request = CalcRequest(x: x.toDouble(), y: y.toDouble());
    final response = _client.sum(request);
    return response.then((value) => value.res);
  }

  Future<num> sub(num x, num y) {
    final request = CalcRequest(x: x.toDouble(), y: y.toDouble());
    final response = _client.sub(request);
    return response.then((value) => value.res);
  }

  Future<num> mul(num x, num y) {
    final request = CalcRequest(x: x.toDouble(), y: y.toDouble());
    final response = _client.mul(request);
    return response.then((value) => value.res);
  }

  Future<num> div(num x, num y) {
    final request = CalcRequest(x: x.toDouble(), y: y.toDouble());
    final response = _client.div(request);
    return response.then((value) => value.res);
  }
}

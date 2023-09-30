//
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'calculator.pb.dart' as $0;

export 'calculator.pb.dart';

@$pb.GrpcServiceName('calculator.Calculator')
class CalculatorClient extends $grpc.Client {
  static final _$sum = $grpc.ClientMethod<$0.CalcRequest, $0.CalcReply>(
      '/calculator.Calculator/Sum',
      ($0.CalcRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalcReply.fromBuffer(value));
  static final _$sub = $grpc.ClientMethod<$0.CalcRequest, $0.CalcReply>(
      '/calculator.Calculator/Sub',
      ($0.CalcRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalcReply.fromBuffer(value));
  static final _$mul = $grpc.ClientMethod<$0.CalcRequest, $0.CalcReply>(
      '/calculator.Calculator/Mul',
      ($0.CalcRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalcReply.fromBuffer(value));
  static final _$div = $grpc.ClientMethod<$0.CalcRequest, $0.CalcReply>(
      '/calculator.Calculator/Div',
      ($0.CalcRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CalcReply.fromBuffer(value));

  CalculatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CalcReply> sum($0.CalcRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sum, request, options: options);
  }

  $grpc.ResponseFuture<$0.CalcReply> sub($0.CalcRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sub, request, options: options);
  }

  $grpc.ResponseFuture<$0.CalcReply> mul($0.CalcRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mul, request, options: options);
  }

  $grpc.ResponseFuture<$0.CalcReply> div($0.CalcRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$div, request, options: options);
  }
}

@$pb.GrpcServiceName('calculator.Calculator')
abstract class CalculatorServiceBase extends $grpc.Service {
  $core.String get $name => 'calculator.Calculator';

  CalculatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CalcRequest, $0.CalcReply>(
        'Sum',
        sum_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CalcRequest.fromBuffer(value),
        ($0.CalcReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CalcRequest, $0.CalcReply>(
        'Sub',
        sub_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CalcRequest.fromBuffer(value),
        ($0.CalcReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CalcRequest, $0.CalcReply>(
        'Mul',
        mul_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CalcRequest.fromBuffer(value),
        ($0.CalcReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CalcRequest, $0.CalcReply>(
        'Div',
        div_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CalcRequest.fromBuffer(value),
        ($0.CalcReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.CalcReply> sum_Pre($grpc.ServiceCall call, $async.Future<$0.CalcRequest> request) async {
    return sum(call, await request);
  }

  $async.Future<$0.CalcReply> sub_Pre($grpc.ServiceCall call, $async.Future<$0.CalcRequest> request) async {
    return sub(call, await request);
  }

  $async.Future<$0.CalcReply> mul_Pre($grpc.ServiceCall call, $async.Future<$0.CalcRequest> request) async {
    return mul(call, await request);
  }

  $async.Future<$0.CalcReply> div_Pre($grpc.ServiceCall call, $async.Future<$0.CalcRequest> request) async {
    return div(call, await request);
  }

  $async.Future<$0.CalcReply> sum($grpc.ServiceCall call, $0.CalcRequest request);
  $async.Future<$0.CalcReply> sub($grpc.ServiceCall call, $0.CalcRequest request);
  $async.Future<$0.CalcReply> mul($grpc.ServiceCall call, $0.CalcRequest request);
  $async.Future<$0.CalcReply> div($grpc.ServiceCall call, $0.CalcRequest request);
}

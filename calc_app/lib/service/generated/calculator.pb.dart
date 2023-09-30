//
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CalcRequest extends $pb.GeneratedMessage {
  factory CalcRequest({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  CalcRequest._() : super();
  factory CalcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalcRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'calculator'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalcRequest clone() => CalcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalcRequest copyWith(void Function(CalcRequest) updates) => super.copyWith((message) => updates(message as CalcRequest)) as CalcRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalcRequest create() => CalcRequest._();
  CalcRequest createEmptyInstance() => create();
  static $pb.PbList<CalcRequest> createRepeated() => $pb.PbList<CalcRequest>();
  @$core.pragma('dart2js:noInline')
  static CalcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalcRequest>(create);
  static CalcRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class CalcReply extends $pb.GeneratedMessage {
  factory CalcReply({
    $core.double? res,
  }) {
    final $result = create();
    if (res != null) {
      $result.res = res;
    }
    return $result;
  }
  CalcReply._() : super();
  factory CalcReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CalcReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CalcReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'calculator'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'res', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CalcReply clone() => CalcReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CalcReply copyWith(void Function(CalcReply) updates) => super.copyWith((message) => updates(message as CalcReply)) as CalcReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalcReply create() => CalcReply._();
  CalcReply createEmptyInstance() => create();
  static $pb.PbList<CalcReply> createRepeated() => $pb.PbList<CalcReply>();
  @$core.pragma('dart2js:noInline')
  static CalcReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CalcReply>(create);
  static CalcReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get res => $_getN(0);
  @$pb.TagNumber(1)
  set res($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRes() => $_has(0);
  @$pb.TagNumber(1)
  void clearRes() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

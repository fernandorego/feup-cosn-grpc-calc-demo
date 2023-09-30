//
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use calcRequestDescriptor instead')
const CalcRequest$json = {
  '1': 'CalcRequest',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `CalcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calcRequestDescriptor = $convert.base64Decode(
    'CgtDYWxjUmVxdWVzdBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

@$core.Deprecated('Use calcReplyDescriptor instead')
const CalcReply$json = {
  '1': 'CalcReply',
  '2': [
    {'1': 'res', '3': 1, '4': 1, '5': 1, '10': 'res'},
  ],
};

/// Descriptor for `CalcReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calcReplyDescriptor = $convert.base64Decode(
    'CglDYWxjUmVwbHkSEAoDcmVzGAEgASgBUgNyZXM=');


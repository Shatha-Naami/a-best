library serializer;


import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';


import 'package:built_collection/built_collection.dart';
import 'package:best/model/base/base_response.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  BaseResponse,
 

])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
     
)
    .build();

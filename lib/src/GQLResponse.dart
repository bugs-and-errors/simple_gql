part of simple_gql;

class GQLResponse {
  final dynamic _data;
  final Response _httpResponse;

  GQLResponse({
    required dynamic data,
    required Response httpResponse,
  })  : _data = data,
        _httpResponse = httpResponse;

  bool get hasData => _data != null;
  dynamic get data => _data;
  Response get httpResponse => _httpResponse;

  @override
  String toString() => 'GQLRESPONSE:\n\tdata:$data';
}

class GQLError {
  final String? message;
  final String? code;

  GQLError({this.code, this.message});

  static List<GQLError> _getErrors(List<dynamic>? err) {
    print(err);
    if (err == null || err.isEmpty) return [];
    return err.map((e) {
      try {
        return GQLError(
          code: 'Error',
          message: e['message'],
        );
      } catch (_) {
        return GQLError(
          code: null,
          message: null,
        );
      }
    }).toList();
  }

  @override
  String toString() => 'GQLERROR:\n\tcode:$code\n\tmessage:$message';
}

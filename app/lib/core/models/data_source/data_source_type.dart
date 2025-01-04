/// データソース
enum DataSourceType {
  dmdataWebSocket(
    true,
    'Project DM-D.S.Sから情報を取得します。WebSocket接続数を1消費します。',
  ),
  dmdataPolling(
    true,
    'Project DM-D.S.Sをから情報を取得します。定期的にデータを再取得します。',
  ),
  none(
    false,
    'データを取得しません。',
  ),
  ;

  // ignore: avoid_positional_boolean_parameters
  const DataSourceType(this.isAvailable, this.description);

  final bool isAvailable;

  final String description;
}

enum TelegramType {
  eewForecast('緊急地震（予報）', 'eew.forecast', '緊急地震速報（予報）の情報'),
  eewWarning('緊急地震（警報）', 'eew.warning', '緊急地震速報（警報）の情報'),
  eewRealtime('緊急地震（リアルタイム震度）', 'eew.realtime', 'リアルタイム震度の情報'),
  telegramEarthquake('地震・津波関連', 'telegram.earthquake', '地震・津波に関連する情報'),
  telegramVolcano('火山関連', 'telegram.volcano', '火山に関連する情報'),
  telegramWeather(
    '気象警報・注意報関連',
    'telegram.weather',
    '気象警報や気象情報・台風情報などの防災気象に関連する情報',
  ),
  telegramForecast('天気予報関連', 'telegram.forecast', '天気予報・概況、2週間気温予報、季節予報など'),
  telegramObservation('気象観測関連', 'telegram.observation', '地上・海上・高層・海洋観測等など'),
  telegramScheduled('定時報・その他関連', 'telegram.scheduled', '大雨危険度通知や海上予報・警報など'),
  telegramLightning('雷観測データ', 'telegram.lightning', 'LIDENによる前1分間雷観測データ'),
  ;

  const TelegramType(
    this.name,
    this.value,
    this.description,
  );

  final String name;
  final String value;
  final String description;
}

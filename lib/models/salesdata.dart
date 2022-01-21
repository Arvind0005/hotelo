class SalesData {
  final double days;
  final double slaes;
  SalesData({this.slaes, this.days});
  List<SalesData> getchartData() {
    List<SalesData> chartdata = [
      SalesData(slaes: 600, days: 1),
      SalesData(slaes: 500, days: 2),
      SalesData(slaes: 100, days: 3),
      SalesData(slaes: 900, days: 4),
      SalesData(slaes: 1000, days: 5),
      SalesData(slaes: 700, days: 6),
      SalesData(slaes: 900, days: 7),
    ];
    return chartdata;
  }
}

class FeeData {
  final String receipeNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receipeNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> fee = [
  FeeData("90841", "November", "8 Nov 2023", "Pending", "988\$", "PAY NOW"),
  FeeData("90840", "September", "8 Sep 2023", "Paid", "1080\$", "DOWNLOAD"),
  FeeData("90839", "August", "8 Aug 2023", "Paid", "950\$", "DOWNLOAD"),
];

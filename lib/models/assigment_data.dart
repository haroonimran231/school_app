class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      "Biology", "Red Blood Cells", "17 Nov 2023", "20 Nov 2023", "Pending"),
  AssignmentData("Chemistry", "Organic Chemistry", "11 Nov 2023", "18 Nov 2023",
      "Submitted"),
  AssignmentData(
      "Physics", "Bohr Theory", "12 Nov 2023", "15 Nov 2023", "Not Submitted"),
  AssignmentData(
      "Mathematics", "Derivation", "20 Nov 2023", "30 Nov 2023", "Pending")
];

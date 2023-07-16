class DateSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DateSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DateSheet> dateSheet = [
  DateSheet(11, "Jan", "PakStudy", "Monday", "9:00am"),
  DateSheet(12, "Jan", "Biology", "Tuesday", "10:00am"),
  DateSheet(13, "Jan", "Chemistry", "Wednesday", "9:30am"),
  DateSheet(14, "Jan", "Physics", "Thursday", "11:00am"),
  DateSheet(15, "Jan", "Mathematics", "Friday", "9:00am"),
  DateSheet(16, "Jan", "Urdu", "Saturday", "11:00am"),
];

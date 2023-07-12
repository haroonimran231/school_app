import 'package:flutter/material.dart';
// import 'package:flutter_lints/flutter.yaml';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/pages/login_page/todo_page.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0,
      ),
    );
    // TextEditingController dateinput = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              children: [
                SizedBox(child: Image.asset('assets/images/topRight.png')),
                const Text(
                  "Personal Information",
                  style: TextStyle(
                    color: Color(0xff8B010B),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Name",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.account_circle_rounded,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Short Name",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.account_circle_rounded,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "13101-0723516-9",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.fingerprint,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Gender",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.wc,
                    color: Color(0xff444444),
                  ),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Father's Name",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.account_circle_rounded,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Father's Occupation",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.work,
                    color: Color(0xff444444),
                  ),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
                )),
                SizedBox(
                  height: 20.h,
                ),
//
                TextField(
                  // controller: dateinput,
                  decoration: InputDecoration(
                    enabledBorder: inputBorder,
                    focusedBorder: inputBorder,
                    hintText: "Date of Birth",
                    filled: true,
                    contentPadding: EdgeInsets.all(18.h),
                    prefixIcon: const Icon(
                      Icons.date_range,
                      color: Color(0xff444444),
                    ),
                    suffixIcon: const Icon(Icons.calendar_month),
                  ),
                  onTap: () async {
                    DateTime? pickDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2002),
                        lastDate: DateTime.now());
                    setState(() {
                      pickDate;
                    });
                  },
                ),

                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Email",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Contact No.",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.phone_android,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Other Contact No.",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.phone_android,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Guardian Contact No.",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.call,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Postal Address",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Permanent Address",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff444444),
                  ),
                  // suffixIcon: const Icon(Icons.visibility_off),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Domicile Distt",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.location_city,
                    color: Color(0xff444444),
                  ),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Minority",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.transfer_within_a_station,
                    color: Color(0xff444444),
                  ),
                  suffixIcon: const Icon(Icons.check_box_outline_blank_sharp),
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Disability",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.wheelchair_pickup,
                    color: Color(0xff444444),
                  ),
                  suffixIcon: const Icon(Icons.check_box_outline_blank_sharp),
                )),
                SizedBox(height: 20.h),
                TextField(
                    decoration: InputDecoration(
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Other Nationality",
                  filled: true,
                  contentPadding: EdgeInsets.all(18.h),
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Color(0xff444444),
                  ),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
                )),
                SizedBox(height: 50.h),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(355.w, 55.h),
                      backgroundColor: const Color(0xff8B010B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        side: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ToDoPage()),
                      );
                    },
                    child: Text(
                      'SAVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

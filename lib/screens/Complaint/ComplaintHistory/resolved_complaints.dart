import 'package:flutter/material.dart';
import 'package:fusion/models/complaints.dart';
import 'complain_history.dart';
import 'complaints_card.dart';

class ResolvedComplaints extends StatelessWidget {
  ComplaintDataUserStudent? data;
  ResolvedComplaints(this.data);
  int? complaintType;
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resolved Complaints"),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: data!.student_complain!.length,
          itemBuilder: (BuildContext context, index) {
            return data!.student_complain![index]['remarks'] == "Resolved"
                ? ComplaintCard(data: data, index: index)
                : SizedBox(
                    width: 1,
                  );
          },
        ),
      ),
    );
  }
}

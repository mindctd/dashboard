import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 58,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 0, 16),
            child: Text(
              "Transfer Approval Task",
              style: TextStyle(fontSize: 24, color: Colors.amber),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 255, 248, 226),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: 0,
                        onChanged: (value) {},
                      ),
                      Text("Search by Employee"),
                      Radio(
                        value: 2,
                        groupValue: 2,
                        onChanged: (value) {},
                        activeColor: (Color(0xFFFECE00)),
                      ),
                      Text("Search by Employee")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Approval Group'),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                        child: Container(
                          width: 1325,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Please select', // ข้อความ hint

                              border: InputBorder.none,

                              // ไม่มีเส้นขอบสำหรับ TextField
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 22),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFFECE00),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // การกดปุ่ม Search
                            },
                            child: Text(
                              'Search',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                      child: Container(
                        width: 1700,
                        child: Divider(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Select Transfer Approaval Task'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 40, 0),
                    child: Container(
                      child: DataTable1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xFFFECE00)), // เพิ่มเส้นขอบ
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // กำหนดให้มีโค้งตามต้องการ
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Cancle",
                                style: TextStyle(
                                    color: Color(0xFFFECE00),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFECE00) // เพิ่มเส้นขอบ
                                ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // กำหนดให้มีโค้งตามต้องการ
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class DataTable1 extends StatelessWidget {
  const DataTable1({super.key});

  @override
  Widget build(BuildContext context) {
    double rowHeight = (MediaQuery.of(context).size.height - 56) / 10;
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.amber, // เปลี่ยนสีของเส้นแบ่ง
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xFFFECE00)),
          // เพิ่มสีพื้นหลัง
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          DataTable(
            dataRowMaxHeight: rowHeight,
            headingRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.grey.withOpacity(0.2)),
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: SizedBox(
                    width: 1320,
                    child: Text(
                      'Approval Group',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: SizedBox(
                    width: 76,
                    child: Text(
                      '',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Icon(
                    Icons.check,
                    color: Color(0xFFFECE00),
                  )),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Group Marketing')),
                  DataCell(Text('')),
                ],
              ),
            ],
          ),
          Divider(),
          Container(
              height: 57,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Color(0xFFFECE00)), // เพิ่มเส้นขอบ
                    ),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // กำหนดให้มีโค้งตามต้องการ
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xFFFECE00),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Container(
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("1"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("2"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("3"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("4..."),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("59"),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color(0xFFFECE00)), // เพิ่มเส้นขอบ
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // กำหนดให้มีโค้งตามต้องการ
                              child: TextButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xFFFECE00),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}

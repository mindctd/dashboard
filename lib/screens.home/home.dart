import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 40, 30, 40),
            child: const Text(
              "Order Status : New",
              style: TextStyle(
                  fontFamily: "NT Bold", fontSize: 18, color: Colors.amber),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 40, 30, 10),
            child: const Text(
              'Order Type',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 8,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTextContainer('New :', '8'),
                _buildTextContainer('Modify :', '11'),
                _buildTextContainer('Suspend :', '4'),
                _buildTextContainer('Reconnect :', '5'),
                _buildTextContainer('Terminate :', '5'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              '28 Records',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 8,
                  color: Colors.black),
            ),
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(55, 50, 30, 20),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.amber),
            ),
            child: DataTable1(),
            margin: EdgeInsets.fromLTRB(55, 0, 55, 0),
            width: double.infinity,
          ),
        ],
      )),
    );
  }
}

Widget _buildTextContainer(String leftText, String rightText) {
  return Container(
    width: 200,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.yellow[600],
      borderRadius: BorderRadius.circular(7),
    ),
    child: Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            leftText,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Spacer(),
        if (rightText.isNotEmpty)
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              rightText,
              style: TextStyle(color: Colors.black),
            ),
          ),
      ],
    ),
  );
}

class Inprogress extends StatelessWidget {
  const Inprogress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CombinedValueBarChart(
            dataMap: {"Flutter": 100, "React": 40, "Xamarin": 40, "mind": 197},
          ),
        ],
      ),
    );
  }
}

class CombinedValueBarChart extends StatelessWidget {
  final Map<String, double> dataMap;
  final List<Color> colors = [
    Color.fromARGB(255, 255, 255, 0), // สีเหลือง
    Color.fromARGB(255, 255, 140, 0), // สีส้ม
    Color.fromARGB(255, 138, 43, 226), // สีม่วง
    Color.fromARGB(255, 65, 105, 225), // สีฟ้า
  ];

  CombinedValueBarChart({Key? key, required this.dataMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalValue = dataMap.values.reduce((a, b) => a + b);

    return Column(
      children: [
        Row(
          children: dataMap.keys.map((key) {
            int index = dataMap.keys.toList().indexOf(key);
            return Expanded(
              flex: (dataMap[key]! / totalValue * 100).toInt(),
              child: Container(
                height: 12,
                decoration: BoxDecoration(
                  color: colors[index % colors.length],
                ),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

Widget _buildTextContainer2(String leftText, String rightText) {
  return Container(
    width: 200,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.yellow[600],
      borderRadius: BorderRadius.circular(7),
    ),
    child: Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            leftText,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Spacer(),
        if (rightText.isNotEmpty)
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              rightText,
              style: TextStyle(color: Colors.black),
            ),
          ),
      ],
    ),
  );
}

class Inprogress2 extends StatelessWidget {
  const Inprogress2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CombinedValueBarChart(
            dataMap: {"Flutter": 100, "React": 40, "Xamarin": 40, "mind": 197},
          ),
        ],
      ),
    );
  }
}

class CombinedValueBarChart2 extends StatelessWidget {
  final Map<String, double> dataMap;
  final List<Color> colors = [
    Color.fromARGB(255, 255, 255, 0), // สีเหลือง
    Color.fromARGB(255, 255, 140, 0), // สีส้ม
    Color.fromARGB(255, 138, 43, 226), // สีม่วง
    Color.fromARGB(255, 65, 105, 225), // สีฟ้า
  ];

  CombinedValueBarChart2({Key? key, required this.dataMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalValue = dataMap.values.reduce((a, b) => a + b);

    return Column(
      children: [
        Row(
          children: dataMap.keys.map((key) {
            int index = dataMap.keys.toList().indexOf(key);
            return Expanded(
              flex: (dataMap[key]! / totalValue * 100).toInt(),
              child: Container(
                height: 12,
                decoration: BoxDecoration(
                  color: colors[index % colors.length],
                ),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

class DataTable1 extends StatelessWidget {
  const DataTable1({super.key});

  @override
  Widget build(BuildContext context) {
    double rowHeight = (MediaQuery.of(context).size.height - 56) / 10;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      DataTable(
        dataRowMaxHeight: rowHeight,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.amber),
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Icon(Icons.star, color: Colors.amber),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Order Number',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Order Type',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Role',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Customer Name',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Billing Account Number',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Item Status',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Flexible(child: Inprogress())),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Icon(
                Icons.star,
                color: Colors.amber,
              )),
              DataCell(Text('1234567890')),
              DataCell(Text('New')),
              DataCell(Text('-')),
              DataCell(Text('xxx xxx')),
              DataCell(Text('1234567890')),
              DataCell(Inprogress()),
            ],
          ),
        ],
      ),
      Divider(),
      Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Container(
            child: Row(
              children: [
                Text(
                  "Total 28 records",
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black), // เพิ่มเส้นขอบ
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(10), // กำหนดให้มีโค้งตามต้องการ
              child: TextButton(
                onPressed: () {},
                child: Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
          Container(
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black), // เพิ่มเส้นขอบ
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(10), // กำหนดให้มีโค้งตามต้องการ
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_forward_rounded),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 100,
              height: 25,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Colors.yellow), // เพิ่มเส้นขอบสีเหลือง
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ), // เพิ่มระยะห่างของข้อความ

                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(0.12),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: 16), // เพิ่มระยะห่างของข้อความ
                child: Text(
                  'Go to',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          SizedBox(
            width: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 100,
              height: 25,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Colors.yellow), // เพิ่มเส้นขอบสีเหลือง
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ), // เพิ่มระยะห่างของข้อความ
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ))
    ]);
  }
}

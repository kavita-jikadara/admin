import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:main_panel/apiservice.dart';

class restaurant extends StatefulWidget {
  const restaurant({super.key});

  @override
  State<restaurant> createState() => _restaurantState();
}

class _restaurantState extends State<restaurant> {
  ApiService apiService = ApiService();
  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    var res = await apiService.getCall('restaurant.php');
    setState(() {
      user = res['data'];
    });
  }

  List user = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "All Restaurant",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: Icon(
          Icons.list,
          size: 25,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 248, 243, 243),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: user.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = user[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 5, bottom: 5, left: 2, right: 2),
                        child: Row(
                          children: [
                            Container(
                              height: 110,
                              width: 110,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  '${apiService.url}/${item['resimage']}',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${item['resname']}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Address : ${item['resaddress']}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                               Text(
                                  "Phone: ${item['resphone']}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      DottedLine(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.grey,
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0,
                      )
                    ],
                  );
                })),
      ),
    );
  }
}

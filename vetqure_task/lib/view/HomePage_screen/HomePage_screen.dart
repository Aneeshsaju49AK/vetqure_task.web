import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int selectedIndex = -1;
  bool logout = false;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttonData = [
      {"name": "Dashboard", "icon": Icons.home},
      {"name": "Calendar", "icon": Icons.person},
      {"name": "client", "icon": Icons.settings},
      {"name": "Profile", "icon": Icons.message},
      {"name": "Finace", "icon": Icons.notifications},
      {"name": "Order", "icon": Icons.help},
    ];
    double widthSize = MediaQuery.sizeOf(context).width;
    double heightSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            
            Expanded(
              flex: 1,
              child: Container(
                color: const Color.fromARGB(255, 32, 6, 126),
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                child: Icon(Icons.person_2_outlined),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: ListView.builder(
                            itemCount: buttonData.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 16.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const LinearBorder(),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 16.0),
                                    backgroundColor: selectedIndex == index
                                        ? Colors
                                            .white 
                                        : Colors
                                            .transparent, 
                                    shadowColor:
                                        Colors.transparent, 
                                    side: const BorderSide(
                                        color: Colors
                                            .white), 
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex =
                                          index; 
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        buttonData[index]["icon"],
                                        color: selectedIndex == index
                                            ? Colors
                                                .black 
                                            : Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        buttonData[index]["name"],
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Colors
                                                  .black 
                                              : Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: widthSize / 1,
                            height: heightSize / 12,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 16.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const LinearBorder(),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 16.0),
                                  backgroundColor: logout == false
                                      ? Colors
                                          .white 
                                      : Colors
                                          .transparent, 
                                  shadowColor: Colors.transparent, 
                                  side: const BorderSide(
                                      color: Colors
                                          .white), 
                                ),
                                onPressed: () {
                                  setState(() {
                                    logout = !logout;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.logout_outlined,
                                      color: logout == false
                                          ? Colors
                                              .black 
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'LogOUt',
                                      style: TextStyle(
                                        color: logout == false
                                            ? Colors
                                                .black 
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(255, 243, 239, 239),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Tittle",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: widthSize / 15,
                                            height: heightSize / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child:const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons
                                                    .invert_colors_rounded),
                                                Text("message")
                                              ],
                                            ),
                                          ),
                                        const  SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: widthSize / 16,
                                            height: heightSize / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child:const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.search),
                                                Text("message")
                                              ],
                                            ),
                                          ),
                                         const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: widthSize / 16,
                                            height: heightSize / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child:const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.settings),
                                                Text("message")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                     
                                    const  VerticalDivider(
                                        color:
                                            Colors.black, 
                                        thickness: 1, 
                                        width: 20, 
                                      ),

                                     
                                    const  CircleAvatar(
                                        radius: 20, 
                                        backgroundColor: Colors.blue,
                                        child: Icon(Icons.person,
                                            color:
                                                Colors.white), 
                                      ),

                                    
                                      DropdownButton<String>(
                                        value: 'Name',
                                        items: <String>[
                                          'Name',
                                          'Option 2',
                                          'Option 3'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          
                                          print('Selected: $newValue');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(
                              //     color: Colors.amber,
                              //   ),
                              // ),
                              Expanded(
                                flex: 40,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        width: widthSize / 1.8,
                                        height: heightSize / 1,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25,
                                                      vertical: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                               const   Text(
                                                    "User Demographics",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold),
                                                  ),
                                                  Container(
                                                    width: widthSize / 17,
                                                    height: heightSize / 30,
                                                    alignment: Alignment
                                                        .center, 
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .black), 
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5), 
                                                    ),
                                                    child: const Row(
                                                      children: [
                                                        Icon(Icons.sort),
                                                        Text(
                                                          "filter",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  12), 
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Container(
                                                width: widthSize / 1.5,
                                                height: heightSize / 13,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: widthSize / 15,
                                                      height: heightSize / 13,
                                                      child:const Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "20",
                                                            style: TextStyle(
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text("Total Walkin"),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: widthSize / 15,
                                                      height: heightSize / 13,
                                                      child:const Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "20",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .arrow_downward_outlined,
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              Text(
                                                                "20%",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .red),
                                                              ),
                                                            ],
                                                          ),
                                                          Text("New Client"),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: widthSize / 15,
                                                      height: heightSize / 13,
                                                      child:const Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "20",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .arrow_downward_outlined,
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                              Text(
                                                                "20%",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .red),
                                                              ),
                                                            ],
                                                          ),
                                                          Text("New Client"),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: widthSize / 1.8,
                                              height: heightSize / 3.5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20,
                                                        horizontal: 50),
                                                child: LineChart(
                                                  LineChartData(
                                                    maxY:
                                                        50, 
                                                    borderData: FlBorderData(
                                                      show: true,
                                                      border:const Border(
                                                        bottom: BorderSide(
                                                            color: Colors.black,
                                                            width: 2), 
                                                        left: BorderSide(
                                                            color: Colors.black,
                                                            width: 2),
                                                        right: BorderSide(
                                                            color: Colors
                                                                .transparent), 
                                                        top: BorderSide(
                                                            color: Colors
                                                                .transparent), 
                                                      ),
                                                    ),
                                                    titlesData: FlTitlesData(
                                                      show: true,
                                                      bottomTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                          showTitles: true,
                                                          reservedSize:
                                                              40, 
                                                          getTitlesWidget:
                                                              (value, meta) {
                                                            
                                                            switch (
                                                                value.toInt()) {
                                                              case 0:
                                                                return  Text(
                                                                    '9 to 10',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              case 1:
                                                                return Text(
                                                                    '10 to 11',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              case 2:
                                                                return Text(
                                                                    '11 to 12',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              case 3:
                                                                return Text(
                                                                    '12 to 1',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                             
                                                              default:
                                                                return Container();
                                                            }
                                                          },
                                                          interval:
                                                              0.5, 
                                                        ),
                                                      ),
                                                      leftTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                          showTitles: true,
                                                          reservedSize:
                                                              20, 
                                                          interval:
                                                              10, 
                                                          getTitlesWidget:
                                                              (value, meta) {
                                                            return Text(
                                                                value
                                                                    .toInt()
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold));
                                                          },
                                                        ),
                                                      ),
                                                      
                                                    ),
                                                    lineBarsData: [
                                                      LineChartBarData(
                                                        spots: [
                                                          FlSpot(0,
                                                              10), 
                                                          FlSpot(1,
                                                              30), 
                                                          FlSpot(2,
                                                              20), 
                                                          FlSpot(3,
                                                              40),
                                                          
                                                        ],
                                                        isCurved:
                                                            true, 
                                                        dotData: FlDotData(
                                                            show:
                                                                true), 
                                                        belowBarData: BarAreaData(
                                                            show:
                                                                false), 
                                                      ),
                                                    ],
                                                    gridData: FlGridData(
                                                        show:
                                                            false), 
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: widthSize / 5,
                                        height: heightSize / 1,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            
                                            Container(
                                              width: double
                                                  .infinity, 
                                              height: heightSize / 20,

                                              padding:const EdgeInsets.symmetric(
                                                  horizontal:
                                                      8.0), 
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                const  Text(
                                                    "User Demographics",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold), 
                                                  ),
                                                  Container(
                                                    width: widthSize / 17,
                                                    height: heightSize / 30,
                                                    alignment: Alignment
                                                        .center, 
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .black), 
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5), 
                                                    ),
                                                    child:const Row(
                                                      children: [
                                                        Icon(Icons.sort),
                                                        Text(
                                                          "filter",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  12), 
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          const  SizedBox(
                                                height:
                                                    10), 
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), 
                                                child: PieChart(
                                                  PieChartData(
                                                    sectionsSpace: 2,
                                                    sections: [
                                                      PieChartSectionData(
                                                        value: 50,
                                                        color: Colors.green,
                                                        title:
                                                            '50%', 
                                                        radius:
                                                            150, 
                                                        titleStyle:const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      PieChartSectionData(
                                                        value: 35,
                                                        color: Colors.blue,
                                                        title: '35%',
                                                        radius:
                                                            150, 
                                                        titleStyle:const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      PieChartSectionData(
                                                        value: 25,
                                                        color: Colors.purple,
                                                        title: '25%',
                                                        radius: 150,
                                                        titleStyle:const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                    centerSpaceRadius:
                                                        0, 
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              // You can uncomment this part if you need a left placeholder
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(
                              //     color: Colors.amber,
                              //   ),
                              // ),
                              Expanded(
                                flex: 25,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40,
                                      right:
                                          35), 
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                    width: widthSize / 1.3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                      const  Padding(
                                          padding:  EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Text(
                                            "Revenue BreakDown",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: widthSize /
                                              1.3, 
                                          height: heightSize / 11,

                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              double value =
                                                  60; 
                                              double remainingValue = 100 -
                                                  value; 

                                              return Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal:
                                                        50), 
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      width: widthSize /
                                                          16, 
                                                      height: heightSize / 10,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          PieChart(
                                                            PieChartData(
                                                              sectionsSpace: 0,
                                                              centerSpaceRadius:
                                                                  30,
                                                              sections: [
                                                                
                                                                PieChartSectionData(
                                                                  value: value,
                                                                  color: Colors
                                                                      .purple,
                                                                  radius: 13,
                                                                  title: '',
                                                                ),
                                                                
                                                                PieChartSectionData(
                                                                  value:
                                                                      remainingValue,
                                                                  color: Colors
                                                                      .grey, 
                                                                  radius: 13,
                                                                  title: '',
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          
                                                          Text(
                                                            '$value%', 
                                                            style:const TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                   const Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "10000",
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        Text("data"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(),
                              // ),
                              Expanded(
                                flex: 40,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: widthSize / 3,
                                      height: heightSize / 1,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: BarChart(
                                          BarChartData(
                                            maxY: 50, 
                                            barGroups: [
                                              BarChartGroupData(
                                                x: 0, 
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 40,
                                                      width: 50,
                                                      color: Colors.black),
                                                ],
                                              ),
                                              BarChartGroupData(
                                                x: 1, 
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 20,
                                                      width: 50,
                                                      color: Colors.red),
                                                ],
                                              ),
                                              BarChartGroupData(
                                                x: 2, 
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 35,
                                                      width: 50,
                                                      color: Colors.blue),
                                                ],
                                              ),
                                              BarChartGroupData(
                                                x: 3, 
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 45,
                                                      width: 50,
                                                      color: Colors.yellow),
                                                ],
                                              ),
                                            ],
                                            
                                            gridData:const FlGridData(
                                              show: false, 
                                            ),
                                            borderData: FlBorderData(
                                              show:
                                                  true, 
                                              border:const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 2), 
                                                left: BorderSide(
                                                    color: Colors.black,
                                                    width: 2), 
                                                right: BorderSide(
                                                    color: Colors
                                                        .transparent), 
                                                top: BorderSide(
                                                    color: Colors
                                                        .transparent), 
                                              ),
                                            ),
                                            titlesData: FlTitlesData(
                                              show: true,
                                              bottomTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  getTitlesWidget:
                                                      (double value,
                                                          TitleMeta meta) {
                                                    switch (value.toInt()) {
                                                      case 0:
                                                        return Text('Revenue',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      case 1:
                                                        return Text('Loss',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      case 2:
                                                        return Text('Profit',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      case 3:
                                                        return Text('Expenses',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      default:
                                                        return Container();
                                                    }
                                                  },
                                                  reservedSize:
                                                      40, 
                                                ),
                                              ),
                                              leftTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  interval:
                                                      10, 
                                                  getTitlesWidget:
                                                      (double value,
                                                          TitleMeta meta) {
                                                    return Text(
                                                        value
                                                            .toInt()
                                                            .toString(),
                                                        style:const TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold));
                                                  },
                                                  reservedSize:
                                                      40, 
                                                ),
                                              ),
                                              
                                            ),
                                            barTouchData: BarTouchData(
                                                enabled:
                                                    false), 
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      width: widthSize / 4,
                                      height: heightSize / 1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                        const  Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: Text(
                                              "Recent Orders",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Container(
                                            width: widthSize / 1,
                                            height: heightSize / 3.5,
                                            child: ListView.builder(
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: widthSize / 1,
                                                    height: heightSize / 20,
                                                    child: Row(
                                                      children: [
                                                      const  CircleAvatar(
                                                          radius: 32,
                                                          child: Icon(Icons
                                                              .person_2_outlined),
                                                        ),
                                                      const  Column(
                                                          children: [
                                                            Text("data"),
                                                            Text("data"),
                                                          ],
                                                        ),
                                                     const   Spacer(),
                                                        Container(
                                                          width: widthSize / 25,
                                                          height:
                                                              heightSize / 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color:
                                                                Colors.purple,
                                                          ),
                                                          child:const Center(
                                                              child: Text(
                                                            "data",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )),
                                                        ),
                                                      const  SizedBox(
                                                          width: 10,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: widthSize / 6,
                                      height: heightSize / 1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                       const   Padding(
                                            padding:  EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: Text(
                                              "Revenue BreakDown",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Container(
                                            width: widthSize / 1,
                                            height: heightSize / 3.5,
                                            child: ListView.builder(
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: widthSize / 1,
                                                    height: heightSize / 20,
                                                    child: Row(
                                                      children: [
                                                      const  CircleAvatar(
                                                          radius: 32,
                                                          child: Icon(Icons
                                                              .person_2_outlined),
                                                        ),
                                                       const Column(
                                                          children: [
                                                            Text("data"),
                                                            Text("data"),
                                                          ],
                                                        ),
                                                      const  Spacer(),
                                                        Container(
                                                          width: widthSize / 25,
                                                          height:
                                                              heightSize / 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color:
                                                                Colors.purple,
                                                          ),
                                                          child:const Center(
                                                              child: Text(
                                                            "data",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )),
                                                        ),
                                                      const  SizedBox(
                                                          width: 10,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

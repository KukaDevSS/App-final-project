// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ກ່ຽວກັບພວກເຮົາ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ລາຍລະອຽດ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        'ເນື້ອຫາຂອງແອັບນີ້ໄດ້ລວມເອົາແຫຼ່ງທ່ອງທ່ຽວຕ່າງໆທີ່ມີຊື່ສຽງໃນລາວມາຢູ່ໃນນີ້ເພື່ອໃຫ້ສະດວກຕໍ່ການໃຊ້ງານຂອງຜູ້ທີ່ເຂົ້າມາຢ້ຽມຊົມ. ມີທີ່ຕັ້ງຂອງໂຮງແຮມ, ຮ້ານອາຫານ, ເສັ້ນທາງໃນການໄປຫາສະຖານທີ່ນັ້ນ ແລະ ຍັງຈະມີຟັງຊັ່ນການໃຊ້ງານອີກຫຼາຍຢ່າງໃນອະນາຄົດ.')
                  ],
                ),
                // Teacer text
                Text(
                  'ອາຈານທີ່ປຶກສາ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage:
                          AssetImage('assets/images/Dr.Savath.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ປອ.ສະຫວາດ ໄຊປະດິດ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Dr. Savath Saypadith',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ພັດທະນາໂດຍ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.indigo)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/Somsyp.jpg'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'ທ້າວ ສົມສີ ສີດວງຕີ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '225N0796/20',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Class 3IT1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.indigo)
                          ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    AssetImage('assets/images/Nunthavy.jpg'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'ທ້າວ ນັນທະວີ ພົມມະເທບ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '225N1440/20',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Class 3IT1',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.indigo)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/images/Tamon.jpg'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'ນາງ ມົນມະນີ ສີສົມພູ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '225N0791/20',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Class 3IT1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Text(
                  'Version 1.0',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

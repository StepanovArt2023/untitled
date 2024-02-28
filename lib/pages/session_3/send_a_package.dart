import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:untitled/widgets/app_bar.dart';
import 'package:untitled/widgets/send_package.dart';

class SendPackage extends StatefulWidget {
  const SendPackage({super.key});
  @override
  State<SendPackage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPackage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _othersController = TextEditingController();
  final TextEditingController _addressControllerDD = TextEditingController();
  final TextEditingController _countryControllerDD = TextEditingController();
  final TextEditingController _phoneControllerDD = TextEditingController();
  final TextEditingController _othersControllerDD = TextEditingController();
  final TextEditingController _itemsController = TextEditingController();
  final TextEditingController _kgController = TextEditingController();
  final TextEditingController _worthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        title: const AppBarWidget(
          text: 'Send a package',
          isBack: true,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      child:
                          Image.asset('assets/images/Frame 60.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Origin Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SendPackageWidget(
                    controller: _addressController, hintText: 'Address'),
                SendPackageWidget(
                    controller: _countryController, hintText: 'State,Country'),
                SendPackageWidget(
                    controller: _phoneController, hintText: 'Phone number'),
                SendPackageWidget(
                    controller: _othersController, hintText: 'Others'),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      child:
                          Image.asset('assets/images/Frame 59.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Destination Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SendPackageWidget(
                    controller: _addressControllerDD, hintText: 'Address'),
                SendPackageWidget(
                    controller: _countryControllerDD,
                    hintText: 'State,Country'),
                SendPackageWidget(
                    controller: _phoneControllerDD, hintText: 'Phone number'),
                SendPackageWidget(
                    controller: _othersControllerDD, hintText: 'Others'),
                const SizedBox(
                  height: 25,
                ),
                Row(
                 children: [
                    Container(
                      height: 18,
                      width: 18,
                      child: Image.asset('assets/images/add-square.png'),
                    ),
                    const SizedBox(width: 10,),
                    const Text(
                      'Package Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SendPackageWidget(
                    controller: _itemsController, hintText: 'package items'),
                SendPackageWidget(
                    controller: _kgController, hintText: 'Weight of item(kg)'),
                SendPackageWidget(
                    controller: _worthController, hintText: 'Worth of items'),
                const SizedBox(height: 25),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select delivery type',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 88,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffcfcfcf),
                              blurRadius: 1,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: const Color(0xff0560fa),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {Navigator.pushNamed(context, '/receipt-page');},
                            icon: const Icon(Icons.access_time),
                            color: Colors.white,
                          ),
                          const Text(
                            'Instant delivery',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 88,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffcfcfcf),
                              blurRadius: 1,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/receipt-page');
                            },
                            icon: Image.asset('assets/images/Frame 81.png'),
                            color: const Color(0xffa7a7a7),
                          ),
                          const Text(
                            'Scheduled delivery',
                            style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            )
          ],
        ),
      )),
    );
  }
}
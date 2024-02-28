import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_bar.dart';

class ReceiptPage extends StatefulWidget {
  static const routeName = '/receipt-page';
  const ReceiptPage({super.key});

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Package Information',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(5, 96, 250, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 7.5),
              const Text('Origin details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
              const SizedBox(height: 5.5),
              const Text('Mbaraugba, Ovom Amaa Asaa, Abia state',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 13,
                  )),
              const SizedBox(height: 5.5),
              const Text('+234 56543 96854',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 13,
                  )),
              const SizedBox(height: 7.5),
              const Text('Destination details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
              const SizedBox(height: 5.5),
              const Text('19 Ademola Alabi close, lagos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 13,
                  )),
              const SizedBox(height: 5.5),
              const Text('+234 70644 80655',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 13,
                  )),
              const SizedBox(height: 7.5),
              const Text('Other details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Package Items',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Books ans stationary, Garri Ngwa',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: const Color.fromRGBO(236, 128, 0, 1),
                          fontSize: 13,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Weight of items',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 170),
                  Text(
                    '1000kg',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color.fromRGBO(236, 128, 0, 1), fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Worth of Items',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 170),
                  Text(
                    'N50,000',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: const Color.fromRGBO(236, 128, 0, 1),
                          fontSize: 15,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Traking Number',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 50),
                  Text(
                    'R-7458-4567-4434-5854',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color.fromRGBO(236, 128, 0, 1), fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                height: 2.0,
                color: const Color.fromRGBO(167, 167, 167, 1),
              ),
              const Text('Charges',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(5, 96, 250, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 7.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Charges',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 149),
                  Text(
                    'N2,500.00',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color.fromRGBO(236, 128, 0, 1), fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Instant delivery',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 168),
                  Text(
                    'N300.00',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color.fromRGBO(236, 128, 0, 1), fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Tax and Service Charges',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 99),
                  Text(
                    'N200.00',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color.fromRGBO(236, 128, 0, 1), fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                height: 2.0,
                color: const Color.fromRGBO(167, 167, 167, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Package total',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 15.0,
                        ),
                  ),
                  const SizedBox(width: 165),
                  Text(
                    'N3000.00',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: const Color.fromRGBO(236, 128, 0, 1), fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, '/main-page');
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.blue, // Цвет бордера
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Edit Package',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 5, 96, 250),
                      ),
                    ),
                  ),
                  const SizedBox(width: 90),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/RoundedLoadingIndicator');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      backgroundColor: const Color.fromRGBO(5, 96, 250, 1),
                    ),
                    child: const Text(
                      'Make payment',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
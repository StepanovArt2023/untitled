import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_bar.dart';
import 'package:untitled/widgets/btn_widget.dart';

class AddMethod extends StatefulWidget {
  const AddMethod({super.key});

  @override
  State<AddMethod> createState() => _AddMethodState();
}

class _AddMethodState extends State<AddMethod> {
  String _selectedRadio = 'Option 1';
  bool _isSubOptionsVisible = false;
  List<String> _subOptions = [];
  void _toggleSubOptions() {
    setState(() {
      _isSubOptionsVisible = !_isSubOptionsVisible;
      if (_isSubOptionsVisible) {
        _subOptions = [
          '**** **** 3323',
          '**** **** 1547'
        ]; 
      } else {
        _subOptions = []; 
      }
    });
  }

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
          text: 'Profile',
          isBack: true,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
        child: Column(
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 20, left: 5.5)),
                Container(
                  width: 375.0,
                  child: RadioListTile<String>(
                    value: 'Option 1',
                    subtitle: const Text(
                      'Complete the payment using your e wallet',
                      style: TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                    ),
                    title: const Text(
                      'Play with wallet',
                      style: TextStyle(color: Colors.black),
                    ),
                    groupValue: _selectedRadio,
                    activeColor: const Color.fromRGBO(5, 69, 250, 1),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedRadio = value!;
                      });
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 0.25), 
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 5.5,
                    ),
                    Container(
                      width: 375,
                      padding: const EdgeInsets.only(top: 8.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 0.25), 
                          ),
                        ],
                      ),
                      child: RadioListTile<String>(
                        title: const Text(
                          'Credit/ debet card',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: const Text(
                          'Complete the payment with using card',
                          style: TextStyle(
                              color: Color.fromRGBO(167, 167, 167, 1)),
                        ),
                        value: 'Option 2',
                        activeColor: const Color.fromRGBO(5, 69, 250, 1),
                        groupValue: _selectedRadio,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedRadio = value!;

                            _toggleSubOptions();
                          });
                        },
                      ),
                    ),
                    if (_subOptions.isNotEmpty)
                      for (var subOption in _subOptions)
                        RadioListTile<String>(
                          title: const Text('**** **** 3323'),
                          value: subOption,
                          groupValue: _selectedRadio,
                          activeColor: const Color.fromRGBO(5, 69, 250, 1),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedRadio = value!;
                            });
                          },
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 325),
                      child: Container(
                        width: 362,
                        height: 55,
                        child: ButtonWidget(
                          buttonName: 'Procesed to pay',
                          buttonColor: const Color.fromRGBO(5, 69, 250, 1),
                          onTap: () {
                            build(context);
                            Navigator.pushNamed(context, '/traking_page');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

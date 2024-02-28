import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/widgets/app_bar.dart';
import 'package:untitled/widgets/top_up_button.dart';
import 'package:untitled/widgets/trans_history_widget.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _ProfilePageState();
}

var balance = '10.712:00';

class _ProfilePageState extends State<WalletPage> {
  var switchBtn = false;
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
          text: 'Wallet',
          isBack: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    // Аватарка
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/s5_ava_Ken.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // Приветствие и баланс
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello Ken',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xff3a3a3a)),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Current balance: ',
                            style: const TextStyle(
                              color: Color(0xff3a3a3a),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: balance,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0560fa),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        if (balance == '10.712:00') {
                          balance = '***';
                        } else if (balance == '***') {
                          balance = '10.712:00';
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        child: balance == '***'
                            ? Image.asset('assets/images/eye.png')
                            : Image.asset('assets/images/eye-slash.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // серая плашка Top Up

              Container(
                width: 360,
                height: 135,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color(0xffcfcfcf),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Top Up',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3a3a3a)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TopUpButton(
                            icon: Image.asset('assets/images/Frame 91.png'),
                            Txt: 'Bank'),
                        TopUpButton(
                            icon:
                                Image.asset('assets/images/Frame 92.png'),
                            Txt: 'Transfer'),
                        TopUpButton(
                            icon: Image.asset('assets/images/Frame 93.png'),
                            Txt: 'Card'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // заголовок истории трат
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Transaction History',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3a3a3a)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // траты
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Delivery fee',
                        day: 'July 7, 2022'),
                    TransactionWidget(
                        summa: 'N2,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Lalalalala',
                        day: 'July 4, 2022'),
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Third Delivery',
                        day: 'July 1, 2022'),
                    TransactionWidget(
                        summa: 'N1,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Another One',
                        day: 'June 27, 2022'),
                    TransactionWidget(
                        summa: 'N2,500.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Experts Are The Best',
                        day: 'June 23, 2022'),
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Delivery fee',
                        day: 'June 17, 2022'),
                    TransactionWidget(
                        summa: 'N2,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Lalalalala',
                        day: 'July 4, 2022'),
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Third Delivery',
                        day: 'July 1, 2022'),
                    TransactionWidget(
                        summa: 'N1,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Another One',
                        day: 'June 27, 2022'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // BOTTOM BAR
    );
  }
}
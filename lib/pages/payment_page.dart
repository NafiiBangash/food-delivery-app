import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:foody_app/components/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userTappedPay(){
    if(formKey.currentState!.validate()){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text('Confirm payment'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Card Number: $cardNumber'),
              Text('Expiry Date: $expiryDate'),
              Text('Card Holder name: $cardHolderName'),
              Text('CVV: $cvvCode'),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Cancel'),),
          TextButton(onPressed: (){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DeliveryProgressPage()));
          },
            child: Text('Yes'),),
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CreditCardWidget(
                        cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        showBackView: isCvvFocused,
                        onCreditCardWidgetChange: (p0) {

                        },
                    ),
                    CreditCardForm(
                        cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        onCreditCardModelChange: (data) {
                          setState(() {
                            cardNumber = data.cardNumber;
                            expiryDate = data.expiryDate;
                            cardHolderName = data.cardHolderName;
                            cvvCode = data.cvvCode;
                          });
                        },
                        formKey: formKey,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MyButton(title: 'Pay now', onTap: userTappedPay),
            ),
            const SizedBox(height: 25.0),
          ],
        ),
      ),
    );
  }
}

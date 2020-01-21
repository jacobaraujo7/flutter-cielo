import 'package:flutter/material.dart';
import 'package:flutter_cielo/flutter_cielo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final CieloEcommerce cielo = CieloEcommerce(
      environment: Environment.SANDBOX,
      merchant: Merchant(
        merchantId: "933fc4e5-ddfd-4cba-a6de-4c07232d73c6",
        merchantKey: "KDRTLNYFNKMXHBSAVREHOZHBHWSWWYIXWWNQWRCN",
      ));

  _incrementCounter() async {
    // print("Iniciando pagamento....");
    // Sale sale = Sale(
    //   merchantOrderId: "123",
    //   customer: Customer(
    //     name: "Comprador crédito simples"
    //   ),
    //   payment: Payment(
    //     type: TypePayment.creditCard,
    //     amount: 7777,
    //     installments: 1,
    //     softDescriptor: "Pagame",
    //     creditCard: CreditCard(
    //       cardNumber: "1234123412341231",
    //       holder: "Teste Holder",
    //       expirationDate: "12/2025",
    //       securityCode: "123",
    //       brand: "Visa",
    //     )
    //   )
    // );

    // try{
    // var response = await cielo.createSale(sale);
    // print(response.payment.paymentId);

    // } on CieloException catch(e){
    //   print(e.message);
    //   print(e.errors[0].message);
    //   print(e.errors[0].code);
    // }


    print("Iniciando pagamento tokenizado....");
    Sale sale = Sale(
      merchantOrderId: "123",
      customer: Customer(
        name: "Comprador crédito simples"
      ),
      payment: Payment(
        type: TypePayment.creditCard,
        amount: 7777,
        installments: 1,
        softDescriptor: "Pagame",
        creditCard: CreditCard(
          cardToken: "302c35e9-be30-487c-9c09-44ad0746e4b5",
          securityCode: "123",
          brand: "Visa",
        )
      )
    );

    try{
    var response = await cielo.createSale(sale);
    print(response.payment.paymentId);

    } on CieloException catch(e){
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    } 

    // print("Tokenizando cartão....");

    // CreditCard cart = CreditCard(
    //   customerName: "Comprador Teste Cielo",
    //   cardNumber: "5352936666816531",
    //   securityCode: "123",
    //   holder: "SARA M M F",
    //   expirationDate: "10/2026",
    //   brand: "Visa",
    // );
    // try {
    //   var response = await cielo.tokenizeCard(cart);
    //   print(response.cardToken);
    //   print(response.cardNumber);
    // } catch (e) {
    //   print(e.message);
    //   print(e.errors[0].message);
    //   print(e.errors[0].code);
    // }


   }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

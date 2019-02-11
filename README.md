# flutter-cielo

Package para criar transações usando o SDK da Cielo e-Commerce

## Start


Adicionar [`flutter_cielo`](https://pub.dartlang.org/packages/flutter_cielo) no seu pubspec.yaml.

``` dart
import 'package:flutter_cielo/flutter_cielo.dart';

...

final CieloEcommerce cielo = CieloEcommerce(
      environment: Environment.SANDBOX,
      merchant: Merchant(
        merchantId: "933fc4e5-ddfd-4cba-a6de-4c07232d73c6",
        merchantKey: "KDRTLNYFNKMXHBSAVREHOZHBHWSWWYIXWWNQWRCN",
      ));

...

    Sale sale = Sale(
      merchantOrderId: "123",
      customer: Customer(
        name: "Comprador crédito simples"
      ),
      payment: Payment(
        type: TypePayment.CreditCard,
        amount: 7777,
        installments: 1,
        softDescriptor: "Cielo",
        creditCard: CreditCard(
          cardNumber: "1234123412341231",
          holder: "Teste Holder",
          expirationDate: "12/2030",
          securityCode: "123",
          brand: "Visa",
        )
      )
    );

  try{
    var response = await cielo.createSale(sale);
    print(response.payment.paymentId);
    } catch(e){
      print(e);
    }

```

## Tokenizando um cartão

``` dart

...

CreditCard cart = CreditCard(
          cardNumber: "1234123412341231",
          holder: "Teste Holder",
          expirationDate: "12/2030",
          brand: "Visa",
        );
    try {
      var response = await cielo.tokenizeCard(cart);
      print(response.cardToken);
    } catch (e) {
      print("ERRO!!");
      print(e);
    }

...

```

## Venda com um cartão tokenizado

``` dart

 Sale sale = Sale(
      merchantOrderId: "123",
      customer: Customer(
        name: "Comprador crédito simples"
      ),
      payment: Payment(
        type: TypePayment.CreditCard,
        amount: 7777,
        installments: 1,
        softDescriptor: "Cielo",
        creditCard: CreditCard.token(
          cardToken: "1234123412341231",
          securityCode: "123",
          brand: "Visa",
        );
      )
    );

  try{
    var response = await cielo.createSale(sale);
    print(response.payment.paymentId);
    } catch(e){
      print(e);
    }

  ....


}

```

## Para mais informações


Acesse o Blog do Flutterando Clicando [aqui](https://flutterando.com.br/) .

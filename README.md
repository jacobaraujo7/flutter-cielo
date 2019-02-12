# flutter-cielo

Package para criar transações usando o SDK da Cielo e-Commerce. Para mais informações acesse a [`documentação`](https://developercielo.github.io/manual/cielo-ecommerce).

## Start


Adicionar [`flutter_cielo`](https://pub.dartlang.org/packages/flutter_cielo) no seu pubspec.yaml.

``` dart
import 'package:flutter_cielo/flutter_cielo.dart';

...
//inicia objeto da api
final CieloEcommerce cielo = CieloEcommerce(
      environment: Environment.SANDBOX, // ambiente de desenvolvimento
      merchant: Merchant(
        merchantId: "SEU_MERCHANT_ID",
        merchantKey: "SEU_MERCHANT_KEY",
      ));

...
    //Objeto de venda
    Sale sale = Sale(
      merchantOrderId: "123", // id único de sua venda
      customer: Customer( //objeto de dados do usuário
        name: "Comprador crédito simples"
      ),
      payment: Payment(    // objeto para de pagamento
        type: TypePayment.creditCard, //tipo de pagamento
        amount: 7777, // valor da compra em centavos
        installments: 1, // número de parcelas
        softDescriptor: "Cielo", //descrição que aparecerá no extrato do usuário. Apenas 15 caracteres
        creditCard: CreditCard( //objeto de Cartão de crédito
          cardNumber: "1234123412341231", //número do cartão
          holder: "Teste Holder", //nome do usuário impresso no cartão
          expirationDate: "12/2030", // data de expiração
          securityCode: "123", // código de segurança
          brand: "Visa", // bandeira
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
    } on CieloException catch(e){
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
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
        type: TypePayment.creditCard,
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
     } on CieloException catch(e){
      print(e.message);
      print(e.errors[0].message);
      print(e.errors[0].code);
    }

  ....


}

```

## Para mais informações


Acesse o Blog do Flutterando Clicando [aqui](https://flutterando.com.br/) .

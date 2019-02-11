import 'package:cielo/src/CreditCard.dart';
import 'package:cielo/src/Environment.dart';
import 'package:cielo/src/Merchant.dart';
import 'package:cielo/src/Sale.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

class CieloEcommerce {
  final Environment environment;
  final Merchant merchant;
  Dio dio;

  CieloEcommerce({@required this.environment, @required this.merchant}) {
    dio = Dio(BaseOptions(headers: {
      "MerchantId": this.merchant.merchantId,
      "MerchantKey": this.merchant.merchantKey
    }));
  }

  Future<Sale> createSale(Sale sale) async {

    Response response =
          await dio.post("${environment.apiUrl}/1/sales/", data: sale.toJson());
      return Sale.fromJson(response.data);

  }

  Future<CreditCard> tokenizeCard(CreditCard card) async {
    Response response =
          await dio.post("${environment.apiUrl}/1/card/", data: card.toJson());
      return CreditCard.fromJson(response.data);
  }
}

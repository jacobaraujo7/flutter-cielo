import 'package:flutter_cielo/src/CieloError.dart';
import 'package:flutter_cielo/src/CieloException.dart';
import 'package:flutter_cielo/src/CreditCard.dart';
import 'package:flutter_cielo/src/Environment.dart';
import 'package:flutter_cielo/src/Merchant.dart';
import 'package:flutter_cielo/src/Sale.dart';
import 'package:dio/dio.dart';

class CieloEcommerce {
  final Environment environment;
  final Merchant merchant;
  Dio dio;

  CieloEcommerce({this.environment, this.merchant}) {
    dio = Dio(BaseOptions(headers: {
      "MerchantId": this.merchant.merchantId,
      "MerchantKey": this.merchant.merchantKey
    }));
  }

  Future<Sale> createSale(Sale sale) async {
    try {
      Response response =
          await dio.post("${environment.apiUrl}/1/sales/", data: sale.toJson());
      return Sale.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } catch (e) {
      throw CieloException(
          List<CieloError>()
            ..add(CieloError(
              code: 0,
              message: e.message,
            )),
          "unknown");
    }
    return null;
  }

  Future<CreditCard> tokenizeCard(CreditCard card) async {
    try {
      Response response =
          await dio.post("${environment.apiUrl}/1/card/", data: card.toJson());
      card.cardToken = response.data["CardToken"];
      card.cardNumber = "****"+card.cardNumber.substring(card.cardNumber.length - 4);
      return card;
    } on DioError catch (e) {
      _getErrorDio(e);
    } catch (e) {
      throw CieloException(
          List<CieloError>()
            ..add(CieloError(
              code: 0,
              message: e.message,
            )),
          "unknown");
    }
    return null;
  }

  _getErrorDio(DioError e) {
    if (e?.response != null && e?.response != "") {
      List<CieloError> errors =
          (e.response.data as List).map((i) => CieloError.fromJson(i)).toList();
      throw CieloException(errors, e.message);
    } else {
      throw CieloException(
          List<CieloError>()..add(CieloError(code: 0, message: "unknown")),
          e.message);
    }
  }
}

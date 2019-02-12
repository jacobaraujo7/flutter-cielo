class Environment {
  static Environment get PRODUCTION => const Environment(
      apiUrl: "https://api.cieloecommerce.cielo.com.br",
      apiQueryUrl: "https://apiquery.cieloecommerce.cielo.com.br");
  static Environment get SANDBOX => const Environment(
      apiUrl: "https://apisandbox.cieloecommerce.cielo.com.br",
      apiQueryUrl: "https://apiquerysandbox.cieloecommerce.cielo.com.br");

  final String apiUrl;
  final String apiQueryUrl;

  const Environment({this.apiUrl, this.apiQueryUrl});
}

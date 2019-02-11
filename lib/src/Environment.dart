class Environment {

	static Environment get PRODUCTION => Environment(apiUrl: "https://api.cieloecommerce.cielo.com.br", apiQueryUrl: "https://apiquery.cieloecommerce.cielo.com.br");
	static Environment get SANDBOX => Environment(apiUrl: "https://apisandbox.cieloecommerce.cielo.com.br", apiQueryUrl: "https://apiquerysandbox.cieloecommerce.cielo.com.br");


	final String apiUrl;
	final String apiQueryUrl;

	Environment({this.apiUrl, this.apiQueryUrl});


}
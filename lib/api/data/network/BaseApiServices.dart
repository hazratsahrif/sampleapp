abstract class BaseApiServices {
  Future<dynamic> postSignUpApiResponse(dynamic data, String url);
  Future<dynamic> postLoginApiResponse(dynamic data, String url);
  Future<dynamic> getAllBooksApiResponse(String url,int limit, int pages);
  Future<dynamic> getAllTradingApiResponse(String url,dynamic data);
  Future<dynamic> getAllDepositApiResponse(String url,dynamic data);
  Future<dynamic> getwithdrawApiResponse(String url,dynamic data);
  Future<dynamic> getPortfolioApiResponse(String url,dynamic data);
}

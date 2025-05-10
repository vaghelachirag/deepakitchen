class EndPoint {
  ///Live
  static var baseUrl = 'https://nebulacompanies.net/';
  // static var baseUrl = 'http://68.178.165.130:8091/';
  ///Test BaseURL
  // static var baseUrl = 'http://203.88.139.169:8092/';
  ///WEB VIEW URLS
  static var registerWebView = "${baseUrl}Structure/Register/IndexMobileView?Token=&isloggedin=false";
  static var mySaleWebView = "${baseUrl}IBO/Sales/MySalesMobileView?Token=";
  static var myDashboardWebView = "${baseUrl}IBO/Dashboard/DashboardMobileView?Token=";
  static var myPurchaseWebView = "${baseUrl}IBO/Sales/MyPurchaseMobileView?token=";
  static var myCommunitySaleWebView = "${baseUrl}IBO/Sales/MyDownlineSalesMobileView?Token=";
  static var myProducts = "${baseUrl}IBO/Sales/ProductsMobileView?Token=";
  static var document = "${baseUrl}IBO/Explore?Token=";
  static var events = "${baseUrl}IBO/Event/IndexMobileView?Token=";
  static var myProfile = "${baseUrl}Structure/Register/IndexMobileFilledView?Token=";
  static var myIncomeDashboardWebview = "${baseUrl}IBO/Income/IBOPayoutReport?Token=";
  static var myOfferDashboardWebview = "${baseUrl}IBO/PromoList/IndexMobileView?Token=";
  static var myDownLineDashboardWebview = "${baseUrl}/Structure/Genealogy/TabularMobileView?Id=Placement&Token=";
  static var youtubeLink = "youtube://www.youtube.com/c/nebulacompanies?sub_confirmation=1";
  static var facebookLink = "https://www.facebook.com/nebulacompanies/";
  ///My Account tab WebView URL

  static var aboutUsWebViewUrl="https://shop.nebulacare.in/Home/About";
  static var returnPolicyWebViewUrl="https://shop.nebulacare.in/Home/ReturnPolicy";
  static var shippingPolicyWebViewUrl="https://shop.nebulacare.in/Home/ShippingPolicy";
  static var privacyPolicyWebViewUrl="https://nebulacompanies.com/Privacy/Android";//"https://shop.nebulacare.in/Home/PrivacyPolicy";
  static var contactUsWebViewUrl="https://shop.nebulacare.in/Home/Contact";
  static var dwarkaPackageList = "${baseUrl}API/Inventory/DwarkaProductList";
  static var dwarkaPaymentGatwayInformation = "${baseUrl}/API/DwarkaSale/GetPaymentGatewayContent";

  ///Ecommerce Apis
  static var ecomDashboardBannerList = "${baseUrl}API/ECom/BannerImages";
  static var ecomProductVerients = "${baseUrl}API/EcomAttribute/GetEcomAttributeValuesList?pickupid=0&Id=";
  static var ecomDashboardBottomBannerList = "${baseUrl}Api/ECom/ListBottomImages?pickupid=0";
  static var ecomDashboardCategoryList = "${baseUrl}API/ECom/CategoryList";
  static var ecomGetMyOrders = "${baseUrl}API/ECom/GetOrderList";
  static var getProductByCat = "${baseUrl}API/ECom/ProductListByCategoryWithPaginationV2?PageIndex=1&PageLength=5000&catid=";
  static var getProductDetailsImage = "${baseUrl}Api/ECom/EComEBCImages?EComProductDetailsId=";
  static var getProductDetails = "${baseUrl}Api/ECom/GetEBCDescriptionWithUCQuantityV2?pickupid=0&Id=";
  static var getProductDetailsBanners = "${baseUrl}API/ECom/ProductBanners?productid=";
  static var getTrendingProduct = "${baseUrl}API/ECom/TrendingProductList";
  static var addToCard = "${baseUrl}API/ECom/AddToCart";
  static var getCartList = "${baseUrl}API/ECom/GetCartItemsList?pickupid=0&deviceid&userid=";
  static var getAddressList = "${baseUrl}API/ECom/GetAddresses";
  static var removeProductFromCart = "$baseUrl/API/ECom/RemoveFromCart";
  static var getCartCount = "$baseUrl/API/ECom/GetCartSumOfQty";
  static var getStateName = "$baseUrl/API/Config/StateInfo";
  static var getCityName = "$baseUrl/API/Config/CityInfo";
  static var addNewAddress = "$baseUrl/API/ECom/AddAddress";
  static var deleteAddress = "$baseUrl/API/ECom/DeleteAddress";
  static var editAddress = "$baseUrl/API/ECom/UpdateAddress";
  static var getPassword = "$baseUrl/API/ForgotPassword/CheckUserDetails";
  static var getResetLinkInMail = "$baseUrl/API/Profile/ForgotPassword";
  static var getOtpForForgotPassword = "$baseUrl/API/ForgotPassword/OTPSendIBO";
  static var getVerifyOtpPassword= "$baseUrl/API/ForgotPassword/ForgotPasswordOTP";
  static var updateFCMTokenForPushNotification= "$baseUrl/API/Notifications/NebProUpdateDeviceToken";
  static var searchListURL= "$baseUrl/API/ECom/SearchByText";
  static var selfProfile= "$baseUrl/API/ECom/Me";
  static var getEWalletBalance= "$baseUrl/API/EComCouponCode/GetIBOWalletBalanceWithTempEwallet";
  static var supportRaiseTicket= "$baseUrl/Api/Ticket/SaveTicket";
  static var versionCheckApi= "$baseUrl/Api/Dashboard/VersionCheckerNebPro";
  static var placeOrder= "${baseUrl}API/EzPayment/GenerateOrderEZBuzz";
  static var eWalletHistoryList= "$baseUrl/API/EComCouponCode/GetIBOWalletList";
  static var ticketList= "$baseUrl/api/Ticket/GetTicketsByUserId";
  static var getIboDetails= "$baseUrl/api/NebProDashboard/IBOIdCard";
  static var getPopupOffer= "$baseUrl/api/NebProDashboard/PopOfferList";
  static var getRelatedProductList= "$baseUrl/API/ECom/ProductListByCategoryWithPaginationV2";
  static var getOutOfStock= "$baseUrl/API/ECom/GetOutOfStock";
  static var removeOutOfStock= "$baseUrl/API/ECom/RemoveOutOfStock";
  static var getTicketDetails= "${baseUrl}API/Ticket/GetTicketDetails";
  static var getSaveMessage= "${baseUrl}API/Ticket/SaveTicketMessage";
  static var ewalletReverseEntry= "${baseUrl}API/EComCouponCode/PostTempEwalletReverseAmount";

  ///get Token
  static var getAccessToken = "API/Token";
  static var checkAccountExpiry = "Api/NebProDashboard/IBOLogin";
  static var newsNotificationList = "api/Notifications/NewsList";
  static var dashboardBannerList = "API/Dashboard/Bannerlist";


}
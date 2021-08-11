import 'package:pixabay_search/model/image_result.dart';

// dart 2.13.0
typedef Json = Map<String, dynamic>;


class FakeDataRepository {
  List<ImageResult> _items = [];

  List<ImageResult> get items => _items;

  Future<List<ImageResult>> fetch() async {
    await Future.delayed(Duration(seconds: 1));
    _items = _makeData();
    return _items;
  }

  List<ImageResult> _makeData() {
    final List<Map<String, dynamic>> json = [
      {
        "id": 336378,
        "pageURL": "https://pixabay.com/photos/laptop-workspace-desk-workstation-336378/",
        "type": "photo",
        "tags": "laptop, workspace, desk",
        "previewURL": "https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g1a497f32b8e6bfe30f928f1c9d8e9a5a10c6d7c563d400e268c52620f3e85a9c25099a3a552ca5150af24dd069bcc08a_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/gca28c869f1e026ba066ce4eaff6ec8b1c01422ff08852c817aed9e2a27f0700cb1700bebfc888bbc1b5df3082e5fb56ffea3bbba795ec9c6fc71edb1853e5077_1280.jpg",
        "imageWidth": 5616,
        "imageHeight": 3744,
        "imageSize": 3780005,
        "views": 971357,
        "downloads": 475860,
        "collections": 2014,
        "likes": 1714,
        "comments": 423,
        "user_id": 242387,
        "user": "Free-Photos",
        "userImageURL": "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"
      },
      {
        "id": 620817,
        "pageURL": "https://pixabay.com/photos/office-notes-notepad-entrepreneur-620817/",
        "type": "photo",
        "tags": "office, notes, notepad",
        "previewURL": "https://cdn.pixabay.com/photo/2015/02/02/11/08/office-620817_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g0916bc25e8e1cfd88a5687c0f2a77c05ee31f8542a0dd54c606e56cdc47f3198b32b48deadb7671a86143045116a0843_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 425,
        "largeImageURL": "https://pixabay.com/get/gcb2d516a32c56fd9ffaede43ded37d840d388ad7f71ee3dd87a52673fc03fb37d714202444394f25ba903eb73671ec1081aec09bba90ff8723838b7e952448de_1280.jpg",
        "imageWidth": 4288,
        "imageHeight": 2848,
        "imageSize": 2800224,
        "views": 601106,
        "downloads": 255505,
        "collections": 1198,
        "likes": 1022,
        "comments": 234,
        "user_id": 663163,
        "user": "Firmbee",
        "userImageURL": "https://cdn.pixabay.com/user/2020/11/25/09-38-28-431_250x250.png"
      },
      {
        "id": 1979674,
        "pageURL": "https://pixabay.com/photos/relaxing-lounging-saturday-cozy-1979674/",
        "type": "photo",
        "tags": "relaxing, lounging, saturday",
        "previewURL": "https://cdn.pixabay.com/photo/2017/01/14/15/11/relaxing-1979674_150.jpg",
        "previewWidth": 150,
        "previewHeight": 102,
        "webformatURL": "https://pixabay.com/get/gcd5257e293b6b453bebcb2b26dfb7363bb7477bef86660ba1c959c471661b4f361425cb33152571f2a2a0401536b25eb2e808374b210b60d307271002a99eada_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 438,
        "largeImageURL": "https://pixabay.com/get/g276c94421e8d4b83d9033a2ac2f69800f994ca4dc902568dbe6d4eeafd7bb5bda1fc6a18507d2c7b503e2a8d1cc01544e4197a86207e9856eaa1c3498949f624_1280.jpg",
        "imageWidth": 5310,
        "imageHeight": 3637,
        "imageSize": 3751070,
        "views": 323018,
        "downloads": 187863,
        "collections": 909,
        "likes": 993,
        "comments": 118,
        "user_id": 334088,
        "user": "JillWellington",
        "userImageURL": "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"
      },
      {
        "id": 2846221,
        "pageURL": "https://pixabay.com/photos/business-computer-mobile-smartphone-2846221/",
        "type": "photo",
        "tags": "business, computer, mobile",
        "previewURL": "https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g0633c6f61f1a020b7b8ea6955e305272e0bbe548b7d34925bfb902593b976e5629e62ac659c6de3c4b77ce7fe20795b4b17d221690dd164c450614e5bb8bf626_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/g7d1c8115107e63bbbb2c94db87dafa8fcbead4aa078299d6e9f1a7bf5dd80443214c163207d9870068a9c94d544ecac1d4ba47b2f83088c535b0b9dbc4d61a5a_1280.jpg",
        "imageWidth": 4608,
        "imageHeight": 3072,
        "imageSize": 2543501,
        "views": 284409,
        "downloads": 200492,
        "collections": 906,
        "likes": 540,
        "comments": 78,
        "user_id": 6689062,
        "user": "6689062",
        "userImageURL": ""
      },
      {
        "id": 410311,
        "pageURL": "https://pixabay.com/photos/iphone-hand-screen-smartphone-apps-410311/",
        "type": "photo",
        "tags": "iphone, hand, screen",
        "previewURL": "https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g0a573040bc23bc9584f13a71d85bab78c88bba63f28886175160d80a565489a7a2fab9794b4b6238ae28013476675d56_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/g9d9a0747b9a16e015edbf58226685e626da231d7cebc64a3f299cee6fdc9362c6669d1acdbc8757df7c88833b7668f7d7e713fc4f447584438afe0c3dca30263_1280.jpg",
        "imageWidth": 1920,
        "imageHeight": 1280,
        "imageSize": 416413,
        "views": 409958,
        "downloads": 197317,
        "collections": 576,
        "likes": 537,
        "comments": 134,
        "user_id": 264599,
        "user": "JESHOOTS-com",
        "userImageURL": "https://cdn.pixabay.com/user/2014/06/08/15-27-10-248_250x250.jpg"
      },
      {
        "id": 410324,
        "pageURL": "https://pixabay.com/photos/iphone-smartphone-apps-apple-inc-410324/",
        "type": "photo",
        "tags": "iphone, smartphone, apps",
        "previewURL": "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/gb96a02c77ad440e8123ec3a7b7fdf35cc5358fb82b6555a975e2d5e73d83fc288f376d3345ff9302c95b1171515091b8_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/g53bf3302fccb423bc7456f132c4d8ea6d1cf5da17997efd75f9152886df32fa0796403ce73174e4f1df323374d3dbfee5336d0c27036e108ddc2529084ac4d93_1280.jpg",
        "imageWidth": 2180,
        "imageHeight": 1453,
        "imageSize": 477025,
        "views": 515238,
        "downloads": 278632,
        "collections": 809,
        "likes": 708,
        "comments": 170,
        "user_id": 264599,
        "user": "JESHOOTS-com",
        "userImageURL": "https://cdn.pixabay.com/user/2014/06/08/15-27-10-248_250x250.jpg"
      },
      {
        "id": 1209938,
        "pageURL": "https://pixabay.com/photos/night-street-city-road-dark-urban-1209938/",
        "type": "photo",
        "tags": "night, street, city",
        "previewURL": "https://cdn.pixabay.com/photo/2016/02/19/11/46/night-1209938_150.jpg",
        "previewWidth": 100,
        "previewHeight": 150,
        "webformatURL": "https://pixabay.com/get/g69e1fcba142a70c4f846dda2fd516991cd7717c936a9200d44a3fbe4321662c3166eebb378a23cb227dc807c268ff1a3118496828cffbdd2c8e19b3c3d2ddfc6_640.jpg",
        "webformatWidth": 426,
        "webformatHeight": 640,
        "largeImageURL": "https://pixabay.com/get/g405f8b6625cad96415eb43ba70f615f267f2e54287b15e26d392930155dedf33ba21a8d205255cbe7d40100c5cdbb77a57fc702d7331723f060db66ee38869d3_1280.jpg",
        "imageWidth": 3648,
        "imageHeight": 5472,
        "imageSize": 3168647,
        "views": 392290,
        "downloads": 295429,
        "collections": 836,
        "likes": 674,
        "comments": 66,
        "user_id": 242387,
        "user": "Free-Photos",
        "userImageURL": "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"
      },
      {
        "id": 459196,
        "pageURL": "https://pixabay.com/photos/macbook-laptop-google-display-459196/",
        "type": "photo",
        "tags": "macbook, laptop, google",
        "previewURL": "https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196_150.jpg",
        "previewWidth": 150,
        "previewHeight": 92,
        "webformatURL": "https://pixabay.com/get/g2c2b8a617cc3970f996a4673f531d2823d641f3aafbe80c311cbbb02e6caf5cc8d48348bab04db798bf03d4263df1e00_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 396,
        "largeImageURL": "https://pixabay.com/get/g1745d3617233a8a06777bb189de6d4000ec97d5b0964a8b8bc1b7fcf47a2ff7bd14b832b623a6a94a7e3a7048ff39ff8f3a803be4601644132ccc8c95bcdc13d_1280.jpg",
        "imageWidth": 3888,
        "imageHeight": 2406,
        "imageSize": 2883743,
        "views": 430898,
        "downloads": 208297,
        "collections": 753,
        "likes": 707,
        "comments": 171,
        "user_id": 377053,
        "user": "377053",
        "userImageURL": ""
      },
      {
        "id": 3076954,
        "pageURL": "https://pixabay.com/photos/desk-smartphone-iphone-notebook-3076954/",
        "type": "photo",
        "tags": "desk, smartphone, iphone",
        "previewURL": "https://cdn.pixabay.com/photo/2018/01/11/21/27/desk-3076954_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g4290aa8c29a8bba8ceede813ae1153aa08c8ed807c0b527819fe9bb1b50d646b0cffcf00ef90698ba2e5c67169ecb74f9eb9adaf8c096142f6f4909c266ecdea_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/gc9a60da790aa7face7e8cf559b548398e2cd5fbeab51d0f63667f2bf856e0a1d704b23c21eb4761baacf2fac0fb509282c8a91f4ddd3f0e953e420c456ac0a12_1280.jpg",
        "imageWidth": 5304,
        "imageHeight": 3531,
        "imageSize": 2258922,
        "views": 177716,
        "downloads": 113223,
        "collections": 812,
        "likes": 488,
        "comments": 86,
        "user_id": 2218222,
        "user": "Nietjuh",
        "userImageURL": "https://cdn.pixabay.com/user/2020/10/09/21-37-32-586_250x250.jpg"
      },
      {
        "id": 791450,
        "pageURL": "https://pixabay.com/photos/iphone-iphone-6-iphone-6-plus-apple-791450/",
        "type": "photo",
        "tags": "iphone, iphone 6, iphone 6 plus",
        "previewURL": "https://cdn.pixabay.com/photo/2015/05/31/12/14/iphone-791450_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g1d249fad41364d1dc3a7f1105fc350c30e2c1cde332021baac2ead527848f54d20e1baea2cb7f1c4049d5689469bc927_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/ga2b9838c9f8ff6ed943615eaa4c9a5710a0a5730e9ef340eee8fcde1089f9f9b044e6bf638d5cd465784e64e2e5db7782c734259b621f374e25db7e161bd3fba_1280.jpg",
        "imageWidth": 5254,
        "imageHeight": 3503,
        "imageSize": 1909143,
        "views": 110523,
        "downloads": 69872,
        "collections": 590,
        "likes": 319,
        "comments": 51,
        "user_id": 1013994,
        "user": "kaboompics",
        "userImageURL": "https://cdn.pixabay.com/user/2018/04/09/00-31-22-504_250x250.jpg"
      },
      {
        "id": 1052023,
        "pageURL": "https://pixabay.com/photos/glasses-book-phone-iphone-1052023/",
        "type": "photo",
        "tags": "glasses, book, phone",
        "previewURL": "https://cdn.pixabay.com/photo/2015/11/19/21/14/glasses-1052023_150.jpg",
        "previewWidth": 150,
        "previewHeight": 112,
        "webformatURL": "https://pixabay.com/get/g9986ff0ed52d0332466527582908f48d21146b4df9b9af732852c5b4ec970ecd418a36ac3ea0627da7902094ff512f738142eeec491aece309cc1c7eccdfc871_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 480,
        "largeImageURL": "https://pixabay.com/get/g8af6a9401e27eafff79b5511b9bf4f30568f164e5f0a3d3cefc7d47e716c5314d280af80903c32979c461396ac9cf108db046dbb46dfd384a7e9bceec02ebcb0_1280.jpg",
        "imageWidth": 4533,
        "imageHeight": 3400,
        "imageSize": 3219890,
        "views": 237369,
        "downloads": 141158,
        "collections": 617,
        "likes": 555,
        "comments": 68,
        "user_id": 1441456,
        "user": "DariuszSankowski",
        "userImageURL": "https://cdn.pixabay.com/user/2015/12/21/10-54-58-771_250x250.jpg"
      },
      {
        "id": 2226095,
        "pageURL": "https://pixabay.com/photos/wild-flower-pointed-flower-flower-2226095/",
        "type": "photo",
        "tags": "wild flower, pointed flower, flower",
        "previewURL": "https://cdn.pixabay.com/photo/2017/04/12/23/23/wild-flower-2226095_150.jpg",
        "previewWidth": 120,
        "previewHeight": 150,
        "webformatURL": "https://pixabay.com/get/g1f08eb3e0a7a6bbc21c3c0370936747d7fe9ab9857db73981656a778f65834866a0f180fbe8813f0c9fb1fac18d6db8e40d693185448e87291d345dcfdcda664_640.jpg",
        "webformatWidth": 515,
        "webformatHeight": 640,
        "largeImageURL": "https://pixabay.com/get/ga4d0b66f486709fe32da6fb34c52f70a4255e87350a60e19abc8360e5fa872cc9d1dd59c3c0f9525f9dfbe03c7c7dc8cea118c5d28165113ba3d6de962a88782_1280.jpg",
        "imageWidth": 4000,
        "imageHeight": 4972,
        "imageSize": 658447,
        "views": 103117,
        "downloads": 77736,
        "collections": 298,
        "likes": 293,
        "comments": 28,
        "user_id": 2364555,
        "user": "pixel2013",
        "userImageURL": "https://cdn.pixabay.com/user/2020/07/25/21-10-11-80_250x250.jpg"
      },
      {
        "id": 336634,
        "pageURL": "https://pixabay.com/photos/notebook-workplace-desk-iphone-336634/",
        "type": "photo",
        "tags": "notebook, workplace, desk",
        "previewURL": "https://cdn.pixabay.com/photo/2014/05/03/00/46/notebook-336634_150.jpg",
        "previewWidth": 150,
        "previewHeight": 100,
        "webformatURL": "https://pixabay.com/get/g7f49cbf44b11ca1c5b1df146392154770895cfde2b94665b058d190e00ccc82c9bedb6189e6ee3f02cc3d0280ae3dafa_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 429,
        "largeImageURL": "https://pixabay.com/get/gb69ab6dc4f5651539d2f45735dd824674dd6fccc43890d2c4a9feee509485d387a3a3b0b70cea65da93f5194a7251f47c0c5e2d975a01b6a6a0ea4f0fabe487c_1280.jpg",
        "imageWidth": 3670,
        "imageHeight": 2462,
        "imageSize": 1919933,
        "views": 298056,
        "downloads": 150161,
        "collections": 587,
        "likes": 506,
        "comments": 103,
        "user_id": 242387,
        "user": "Free-Photos",
        "userImageURL": "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"
      },
      {
        "id": 2707528,
        "pageURL": "https://pixabay.com/photos/lighthouse-sunset-coast-tower-2707528/",
        "type": "photo",
        "tags": "lighthouse, sunset, coast",
        "previewURL": "https://cdn.pixabay.com/photo/2017/09/02/15/10/lighthouse-2707528_150.jpg",
        "previewWidth": 100,
        "previewHeight": 150,
        "webformatURL": "https://pixabay.com/get/ga0e297a917e7e57f04c788a401d8284d059120ddb666db74e6151c89d558fd85c2c37e8b8430c50a6a7d2a8ae2c797792621568f9b73803560b242cae4d8f43d_640.jpg",
        "webformatWidth": 426,
        "webformatHeight": 640,
        "largeImageURL": "https://pixabay.com/get/g0aa58335727bcdbe1014ef16a7ca23f47b43716414cfaa17d509230134467fc7b1c6669276b8d0ac6fa5545f1eea6401c2a0f5596acec7684fd4366eb45f50f5_1280.jpg",
        "imageWidth": 1333,
        "imageHeight": 2000,
        "imageSize": 319283,
        "views": 209969,
        "downloads": 88969,
        "collections": 479,
        "likes": 400,
        "comments": 23,
        "user_id": 12019,
        "user": "12019",
        "userImageURL": ""
      },
      {
        "id": 1807521,
        "pageURL": "https://pixabay.com/photos/hot-air-balloons-bagan-sunset-1807521/",
        "type": "photo",
        "tags": "hot air balloons, bagan, sunset",
        "previewURL": "https://cdn.pixabay.com/photo/2016/11/08/05/18/hot-air-balloons-1807521_150.jpg",
        "previewWidth": 105,
        "previewHeight": 150,
        "webformatURL": "https://pixabay.com/get/gb2143e2deb53d66731e7c241c38ba19ee2e9ae08060e09056b5759563d06d23af1477dd17b33d342bcd30f07205f1c027433543225ebffec58d5903e342c0be0_640.jpg",
        "webformatWidth": 450,
        "webformatHeight": 640,
        "largeImageURL": "https://pixabay.com/get/gbb92743241d57da613a06fee6998beee36be9bcf6125000af6a8d15b38270bb46dc12b3f8ea4ff5c5a7b0238dc09c06b1143416a4a3183f787bdbc9c3f921e19_1280.jpg",
        "imageWidth": 2504,
        "imageHeight": 3558,
        "imageSize": 2054554,
        "views": 352618,
        "downloads": 210231,
        "collections": 523,
        "likes": 425,
        "comments": 30,
        "user_id": 3639875,
        "user": "sasint",
        "userImageURL": "https://cdn.pixabay.com/user/2016/10/30/05-50-54-750_250x250.jpg"
      },
      {
        "id": 1192032,
        "pageURL": "https://pixabay.com/photos/girl-smartphone-iphone-1192032/",
        "type": "photo",
        "tags": "girl, smartphone, iphone",
        "previewURL": "https://cdn.pixabay.com/photo/2016/02/10/16/39/girl-1192032_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/g5efaac3ee446e000d1952d7ce72a658e4f7ee55418a1d4449b4671d504c79be655cfe8825345b9fe8a9d7cdd23418444d64b312a748573a8129d967b8e6bded3_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/g1a7824fdfd5a3c813684ce1d16d9acb3fe421fa9e2f0e18cc1d39d1d397a460346039f6fa054257ff9e16b6b00118b4ff98a42d6e1b98b59d85cd66bf76f3090_1280.jpg",
        "imageWidth": 2048,
        "imageHeight": 1367,
        "imageSize": 299773,
        "views": 90131,
        "downloads": 42301,
        "collections": 272,
        "likes": 183,
        "comments": 15,
        "user_id": 725943,
        "user": "janeb13",
        "userImageURL": "https://cdn.pixabay.com/user/2016/02/25/23-52-46-967_250x250.jpg"
      },
      {
        "id": 1851497,
        "pageURL": "https://pixabay.com/photos/bicycle-building-city-1851497/",
        "type": "photo",
        "tags": "bicycle, building, city",
        "previewURL": "https://cdn.pixabay.com/photo/2016/11/23/00/39/bicycle-1851497_150.jpg",
        "previewWidth": 105,
        "previewHeight": 150,
        "webformatURL": "https://pixabay.com/get/gd36b183d82eb50f621b33c6f5ad002366da91259b4a236a7a091ea25c882b8c07734bf25c1fdc793961af5994e56d483e189f7d47dd4870c942455221bb8ee23_640.jpg",
        "webformatWidth": 447,
        "webformatHeight": 640,
        "largeImageURL": "https://pixabay.com/get/g2d218111af674d8d9db9537309e48b0fc58ac83faf353e4ff7b9e8c318632bc0d95e04234f3a72b9720344586b19025803121572885c41d463b66bc6a78db2ed_1280.jpg",
        "imageWidth": 2859,
        "imageHeight": 4096,
        "imageSize": 2369529,
        "views": 201967,
        "downloads": 144449,
        "collections": 659,
        "likes": 399,
        "comments": 39,
        "user_id": 2286921,
        "user": "Pexels",
        "userImageURL": "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
      },
      {
        "id": 1867761,
        "pageURL": "https://pixabay.com/photos/home-office-computer-desk-display-1867761/",
        "type": "photo",
        "tags": "home office, computer, desk",
        "previewURL": "https://cdn.pixabay.com/photo/2016/11/29/06/18/home-office-1867761_150.jpg",
        "previewWidth": 150,
        "previewHeight": 100,
        "webformatURL": "https://pixabay.com/get/g39d13762013eb7245b0012825c96173ffc0f508a4d5b83178f45dfebc2ff32ff1333db0a5d4d901d42fe662338815802e10b10f5555b4c802aefd791efbec55b_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 427,
        "largeImageURL": "https://pixabay.com/get/g6bd1a64d02fa9f818d6d65be160cfe8d4b04fb0acc46dbc532eababe91d1112b60636c5b4475226176a32fcdf08dc5eaeecc8ef8dcfe5a91eda2108208ef4aff_1280.jpg",
        "imageWidth": 4000,
        "imageHeight": 2669,
        "imageSize": 2381783,
        "views": 138617,
        "downloads": 82764,
        "collections": 540,
        "likes": 310,
        "comments": 39,
        "user_id": 2286921,
        "user": "Pexels",
        "userImageURL": "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
      },
      {
        "id": 336371,
        "pageURL": "https://pixabay.com/photos/blogger-cellphone-office-business-336371/",
        "type": "photo",
        "tags": "blogger, cellphone, office",
        "previewURL": "https://cdn.pixabay.com/photo/2014/05/02/21/48/blogger-336371_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL": "https://pixabay.com/get/ge56578a6e7052edf8585abedfee463bf824434eb11bb6f957fddf97fb892980f563241ac3e9f3a2c8887db304a3d342d_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL": "https://pixabay.com/get/g91f6f49c9250207edfff72adf1c4e100a421eeed7c555aec12c0f1419c77734ca63410b2491a5d27c386ed871a999f2df8177dc054fdd4d3dc7d31deb65d299c_1280.jpg",
        "imageWidth": 5616,
        "imageHeight": 3744,
        "imageSize": 2276119,
        "views": 333922,
        "downloads": 162768,
        "collections": 627,
        "likes": 463,
        "comments": 107,
        "user_id": 242387,
        "user": "Free-Photos",
        "userImageURL": "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"
      },
      {
        "id": 569319,
        "pageURL": "https://pixabay.com/photos/night-sky-stars-long-exposure-night-569319/",
        "type": "photo",
        "tags": "night sky, stars, long exposure",
        "previewURL": "https://cdn.pixabay.com/photo/2014/12/15/17/16/night-sky-569319_150.jpg",
        "previewWidth": 100,
        "previewHeight": 150,
        "webformatURL": "https://pixabay.com/get/geb9ce545052de02a273fcbe308d06519717c07d1ef6c6a95a4d9ffdac59c35bb6ca72fb76c74352571dc307596c19c43_640.jpg",
        "webformatWidth": 425,
        "webformatHeight": 640,
        "largeImageURL": "https://pixabay.com/get/g1d113991901603ccf0e59f639e7f547dd97dd082711f440baef835b132807961fd35f058d4141e0d5fddb74843786c777bbba4ddd2f8a5cd331a5bd0705e6aaa_1280.jpg",
        "imageWidth": 2291,
        "imageHeight": 3450,
        "imageSize": 3113088,
        "views": 218724,
        "downloads": 151799,
        "collections": 547,
        "likes": 383,
        "comments": 45,
        "user_id": 242387,
        "user": "Free-Photos",
        "userImageURL": "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"
      }
    ];

    return json.map((e) => ImageResult.fromJson(e)).toList();
  }
}
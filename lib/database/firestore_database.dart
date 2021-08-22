import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:meta/meta.dart';

import 'firestore_path.dart';
import 'firestore_service.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabase {
  final _firestoreService = FirestoreService.instance;

  //Method to create/update user.

  // Future<void> setUser(UserModel trofUser, User user) async =>
  //     _firestoreService.setData(
  //         path: FirestorePath.userProfile(user.uid), data: trofUser.toJson());

  // Future<void> updateUser(UserModel trofUser, User user) async =>
  //     _firestoreService.setData(
  //         path: FirestorePath.userProfile(user.uid), data: trofUser.toJson());

  //Method to retrieve trof user

  // Stream<UserModel> userStream({@required String uid}) =>
  //     _firestoreService.documentStream(
  //         path: FirestorePath.userProfile(uid),
  //         builder: (data, documentId) => UserModel.fromJson(data));

  // Stream<TestingModel> artistStream({@required String testId}) =>
  //     _firestoreService.documentStream(
  //         path: FirestorePath.test(testId),
  //         builder: (data, documentId) => TestingModel.fromJson(data));

//   Future<List<AddressModel>> getAddresses({required String uid}) {
//     return _firestoreService.collectionGet(
//         path: FirestorePath.userAddresses(uid),
//         builder: (data, documentID) => AddressModel.fromJson(data));
//   }

//   Future<List<TestingModel>> getUserTests({required String uid}) {
//     return _firestoreService.collectionGet(
//         path: FirestorePath.userTests(uid),
//         builder: (data, documentID) => TestingModel.fromJson(data));
//   }

//   Future<List<TestingModel>> getAllTests() {
//     return _firestoreService.collectionGet(
//         path: FirestorePath.tests(),
//         builder: (data, documentID) => TestingModel.fromJson(data));
//   }

//   Future<List<EventModel>> getAllEvents({@required companyId}) {
//     return _firestoreService.collectionFilteredArrayGet(
//         filterKey: 'companyId',
//         filterValue: companyId,
//         path: FirestorePath.events(),
//         builder: (data, documentID) => EventModel.fromJson(data));
//   }

//   Future<List<StaffModel>> getAllStaff({@required companyId}) {
//     return _firestoreService.collectionGet(
//         path: FirestorePath.staff(companyId),
//         builder: (data, documentID) => StaffModel.fromJson(data));
//   }

//   Future<List<CompanyModel>> getAllComapnies(
//       {@required userId, @required filterKey}) {
//     print('user Id' + userId);
//     return _firestoreService.collectionFilteredArrayGet(
//         filterKey: filterKey,
//         filterValue: userId,
//         path: FirestorePath.companies(),
//         builder: (data, documentID) => CompanyModel.fromJson(data));
//   }

//   Future<bool> getIsRegistredCompany({@required userId, @required filterKey}) {
//     print('user Id' + userId);
//     bool isRegistered = false;
//     Future<List<CompanyModel>> results =
//         _firestoreService.collectionFilteredArrayGet(
//             filterKey: filterKey,
//             filterValue: userId,
//             path: FirestorePath.companies(),
//             builder: (data, documentID) => CompanyModel.fromJson(data));
//     return results.then((value) {
//       if (value.isNotEmpty) {
//         isRegistered = true;
//         return isRegistered;
//       } else {
//         return isRegistered;
//       }
//     });
//   }

//   Future<List<ProductModel>> getProducts() {
//     print('fetching products');
//     return _firestoreService.collectionGet(
//         path: FirestorePath.products(),
//         builder: (data, documentID) => ProductModel.fromJson(data));
//   }

//   Future<List<OrderModel>> getOrders({@required userId}) {
//     print('fetching orders ** Here** ');
//     return _firestoreService.collectionGet(
//         path: FirestorePath.orders(userId),
//         builder: (data, documentID) {
//           print(documentID);
//           return OrderModel.fromJson(data);
//         });
//   }

//   Stream<OrderModel> getOrderStream({@required userId, @required orderId}) {
//     print('fetching products');
//     return _firestoreService.documentStream(
//         path: FirestorePath.order(userId, orderId),
//         builder: (data, documentID) => OrderModel.fromJson(data));
//   }

//   Stream<EventModel> getEventStream({@required userId, @required eventId}) {
//     print('fetching events');
//     return _firestoreService.documentStream(
//         path: FirestorePath.events(),
//         builder: (data, documentID) => EventModel.fromJson(data));
//   }

//   Stream<StaffModel> getStaffStream({@required companyId}) {
//     print('fetching staff');
//     return _firestoreService.documentStream(
//         path: FirestorePath.staff(companyId),
//         builder: (data, documentID) => StaffModel.fromJson(data));
//   }

//   Stream<CompanyModel> getCompanyStream({@required companyId}) {
//     print('fetching products');
//     return _firestoreService.documentStream(
//         path: FirestorePath.company(companyId),
//         builder: (data, documentID) => CompanyModel.fromJson(data));
//   }

//   Future<dynamic> getOrder({@required userId, @required orderId}) {
//     print('fetching single order');
//     return _firestoreService.getData(
//       path: FirestorePath.order(userId, orderId),
//     );
//   }

//   Future<dynamic> getTest({@required testId}) {
//     print('fetching single test');
//     return _firestoreService.getData(
//       path: FirestorePath.test(testId),
//     );
//   }
//   //Method to Create New Artist

//   Future<void> setTest(
//           TestingModel testData, String testId, String userId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.userTest(userId, testId),
//           data: testData.toJson());
//   Future<void> setNotification(
//           TestingModel testData, String testId, String userId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.userTest(userId, testId),
//           data: testData.toJson());
//   //Method to Create New Address
//   //
//   Future<void> setTestPublic(TestingModel testData, String testId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.test(testId), data: testData.toJson());

//   Future<void> setAddress(
//           AddressModel addressData, String userId, String addressId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.userAddress(userId, addressId),
//           data: addressData.toJson());

// //Method to Create New Order

//   Future<void> setOrder(
//           OrderModel orderData, String orderId, String userId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.order(userId, orderId), data: orderData.toJson());

//   Future<void> setCompany(CompanyModel companyData, String companyId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.company(companyId), data: companyData.toJson());

//   Future<void> setEvent(EventModel eventModel, String eventId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.event(eventId), data: eventModel.toJson());
//   Future<void> setStaff(
//           StaffModel staffModel, String staffId, String companyId) async =>
//       _firestoreService.setData(
//           path: FirestorePath.staffMember(companyId, staffId),
//           data: staffModel.toJson());

  // Future<void> setOrderProducts(Product orderProducts, String orderId,
  //         String productId, String orderItems) async =>
  //     _firestoreService.setData(
  //         path: FirestorePath.orderItem(orderId, orderItems, productId),
  //         data: orderProducts.toJson());

  //Method to create/update Categories.

  // Future<void> setCategory(ProductCategory category, String artistId) async {
  //   var result = _firestoreService.setData(
  //       path: FirestorePath.categoryLocation(artistId, category.id),
  //       data: category.toJson());
  //   return result;
  // }

  // //Method to delete Category
  // Future<void> deleteCategory(ProductCategory category, String artistId) async {
  //   _firestoreService.deleteData(
  //       path: FirestorePath.categoryLocation(artistId, category.id));
  // }
  // //Method to create/update Products.

  // Future<void> setProduct(Product product, String artistId) async {
  //   var result = _firestoreService.setData(
  //       path: FirestorePath.productLocation(artistId, product.id),
  //       data: product.toJson());
  //   return result;
  // }

  // //Method to delete prodct
  // Future<void> deleteProduct(Product product, String artistId) async {
  //   _firestoreService.deleteData(
  //       path: FirestorePath.productLocation(artistId, product.id));
  // }

  // //Get all Tax Codes.

  // Future<TaxCode> getTaxCodes({@required String artistId}) {
  //   return _firestoreService.getData(path: FirestorePath.taxCodes(artistId));
  // }
  // //Get single Tax Code

  // Future<dynamic> getTaxCode({@required String artistId, String taxCodeId}) {
  //   return _firestoreService.getData(
  //       path: FirestorePath.taxCode(artistId, taxCodeId));
  // }

  // Future<dynamic> getArtist({@required String artistId}) {
  //   return _firestoreService.getData(
  //       path: FirestorePath.artistProfile(artistId));
  // }

  // Future<dynamic> getOrder({@required String orderId}) {
  //   return _firestoreService.getData(path: FirestorePath.order(orderId));
  // }

  // Future<List<Product>> getOrderProducts(
  //         String orderId, String orderItems) async =>
  //     _firestoreService.collectionGet(
  //         path: FirestorePath.orderItems(orderId, orderItems),
  //         builder: (data, documentId) => Product.fromJson(data));

  // // Set individual Tax Code.

  // Future<void> setTaxCode(TaxCode taxCode, String artistId) async {
  //   var result = _firestoreService.setData(
  //       path: FirestorePath.taxCode(artistId, taxCode.id),
  //       data: taxCode.toJson());
  //   return result;
  // }
  // // Set individual Tax Code.

  // Future<void> setSchedule(ScheduleModel schedule, String artistId) async {
  //   var result = _firestoreService.setData(
  //       path: FirestorePath.schedule(schedule.id, artistId),
  //       data: schedule.toJson());
  //   return result;
  // }

  //Method to delete address
  // Future<void> deleteAddress(AddressModel addressModel, String uid) async {
  //   _firestoreService.deleteData(
  //       path: FirestorePath.userAddress(uid, addressModel.id));
  // }

  // //Method to receive stream of Categories.
  // Stream<List<ProductCategory>> categoriesStream({@required String artistId}) {
  //   print('fetching categories');
  //   var result = _firestoreService.collectionStream(
  //       path: FirestorePath.categoryList(artistId),
  //       builder: (data, documentId) => ProductCategory.fromJson(data));
  //   return result;
  // }

  // //Method to receive stream of tax Codes
  // Stream<List<TaxCode>> taxcodesStream({@required String artistId}) {
  //   print('fetching TaxCodes');

  //   var result = _firestoreService.collectionStream(
  //       path: FirestorePath.taxCodes(artistId),
  //       builder: (data, documentId) => TaxCode.fromJson(data));
  //   return result;
  // }

  // //Method to receive stream of schedules
  // Stream<List<ScheduleModel>> schedulesStream({@required String artistId}) {
  //   print('fetching Schedules');

  //   var result = _firestoreService.collectionStream(
  //       path: FirestorePath.schedules(artistId),
  //       builder: (data, documentId) => ScheduleModel.fromJson(data));
  //   return result;
  // }

  // //Method to receive stream of Products.
  // Stream<List<Product>> productsStream(
  //     {@required String artistId,
  //     @required String filterKey,
  //     String filterValue}) {
  //   print('fetching products filtered by category');
  //   var result = _firestoreService.collectionFilteredStream(
  //       filterKey: filterKey,
  //       filterValue: filterValue,
  //       path: FirestorePath.productsLocation(artistId),
  //       builder: (data, documentId) => Product.fromJson(data));
  //   return result;
  // }

  // Stream<List<TestingModel>> allUserTestsStream({
  //   required String userId,
  // }) {
  //   print('fetching all users tests');
  //   var result = _firestoreService.collectionOrderedStream(
  //       orderBy: 'dateTested',
  //       path: FirestorePath.userTests(userId),
  //       builder: (data, documentId) => TestingModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<TestingModel>> allTestsStream() {
  //   print('fetching all tests');
  //   var result = _firestoreService.collectionFilteredOrderedStream(
  //       filterKey: 'confirmed',
  //       filterValue: false,
  //       orderBy: 'dateTested',
  //       path: FirestorePath.tests(),
  //       builder: (data, documentId) => TestingModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<TestingModel>> allDisputeTestsStream() {
  //   print('fetching all Disputed tests');
  //   var result = _firestoreService.collectionFilteredOrderedStream(
  //       filterKey: 'flagged',
  //       filterValue: true,
  //       orderBy: 'dateTested',
  //       path: FirestorePath.tests(),
  //       builder: (data, documentId) => TestingModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<EventModel>> allEventsStream({@required companyId}) {
  //   print('fetching all tests');
  //   var result = _firestoreService.collectionFilteredOrderedStream(
  //       filterKey: 'companyId',
  //       filterValue: companyId,
  //       orderBy: 'dateTime',
  //       path: FirestorePath.events(),
  //       builder: (data, documentId) => EventModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<AddressModel>> allAddressStream({
  //   required String userId,
  // }) {
  //   print('fetching all addresses');
  //   var result = _firestoreService.collectionStream(
  //       path: FirestorePath.userAddresses(userId),
  //       builder: (data, documentId) => AddressModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<StaffModel>> allStaffStream({
  //   required String companyId,
  // }) {
  //   print('fetching all staff');
  //   var result = _firestoreService.collectionStream(
  //       path: FirestorePath.staff(companyId),
  //       builder: (data, documentId) => StaffModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<ProductModel>> productsStream() {
  //   print('fetching all addresses');
  //   var result = _firestoreService.collectionStream(
  //       path: FirestorePath.products(),
  //       builder: (data, documentId) => ProductModel.fromJson(data));
  //   return result;
  // }
  // // Stream<List<TestingModel>> testStream(
  // //     {@required String filterKey, String filterValue}) {
  // //   print('fetching artists filtered by artist');
  // //   var result = _firestoreService.collectionFilteredArrayStream(
  // //       filterKey: filterKey,
  // //       filterValue: filterValue,
  // //       path: FirestorePath.tests(),
  // //       builder: (data, documentId) => TestingModel.fromJson(data));
  // //   return result;
  // // }

  // Stream<List<OrderModel>> allOrdersStream({required String userId}) {
  //   print('fetching orders filtered by user');
  //   var result = _firestoreService.collectionOrderedStream(
  //       orderBy: 'dateCreated',
  //       path: FirestorePath.orders(userId),
  //       builder: (data, documentId) => OrderModel.fromJson(data));
  //   return result;
  // }

  // Stream<OrderModel> currentOrderStream(
  //     {required String userId, required orderId}) {
  //   print('fetching current orders filtered by user');
  //   var result = _firestoreService.documentStream(
  //       path: FirestorePath.order(userId, orderId),
  //       builder: (data, documentId) => OrderModel.fromJson(data));
  //   return result;
  // }

  // Stream<TestingModel> currentTestStream(
  //     {required String userId, required testId}) {
  //   print('fetching current test filtered by user');
  //   var result = _firestoreService.documentStream(
  //       path: FirestorePath.userTest(userId, testId),
  //       builder: (data, documentId) => TestingModel.fromJson(data));
  //   return result;
  // }

  // Stream<List<TestingModel>> filteredTestStream(
  //     {@required String filterKey, String filterValue}) {
  //   print('fetching tests filtered by user');
  //   var result = _firestoreService.collectionFilteredStream(
  //       filterKey: filterKey,
  //       filterValue: filterValue,
  //       path: FirestorePath.orders(userId),
  //       builder: (data, documentId) => TestingModel.fromJson(data));
  //   return result;
  // }
}


import 'package:cloud_firestore/cloud_firestore.dart';

Future<StripeData> fetchStripeData() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  var docSnapshot =  await firestore.collection('stripe_data').doc('MRT0bqrrZMi8yCqeFMHS').get();

  return StripeData(
      sub1priceId: docSnapshot.get('sub1priceId'),
      sub2priceId: docSnapshot.get('sub2priceId')
  );
}

class StripeData{
  String sub1priceId;
  String sub2priceId;
  StripeData({
    required this.sub1priceId,
    required this.sub2priceId,
  });
}
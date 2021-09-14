void main(List<String> args) {
  print('### Future example ###');
  // fetchUserOrder();
  // print('Order placed');

  futureWithException();
  print('Order service is completed');
}

Future<void> fetchUserOrder() {
  print('Ordering...');
  return Future.delayed(Duration(seconds: 5), () => print('Large latte'));
}

Future<void> futureWithException() {
  return Future
      .delayed(Duration(seconds: 2),
      () => throw Exception('Problem in order service')
  );
}
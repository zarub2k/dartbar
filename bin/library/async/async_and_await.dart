Future<void> main(List<String> args) async {
  print('### Async and await example ###');
  var order = await createOrder();
  print('Order is $order');
  print('Order is done');
}

Future<String> createOrder() async {
  var order = await fetchOrder();
  return 'Your order is $order';
}

Future<String> fetchOrder() {
  return Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte'
  );
}
void main(List<String> args) async {
  print('### Async and await example ###');
  print(await createOrder());
  print('Order is done');
}

Future<String> createOrder() async {
  var order = await fetchOrder();
  return 'Your order is $order';
}

Future<String> fetchOrder() {
  return Future.delayed(Duration(seconds: 2),
      () => 'Large Latte'
  );
}
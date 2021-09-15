void main(List<String> args) {
  print('### Async chaining example ###');
  futureWithWait();
}

Future<void> futureWithWait() async {
  print('Enters futureWithWait()');
  await Future.wait([
    checkOrder(),
    prepareOrder(),
    deliverOrder()
  ]);
}

Future<void> chainingWithAsyncAwait() async {
  print('Enters chainingWithAsyncAwait()');
  await checkOrder();
  await prepareOrder();
  await deliverOrder();
}

Future<void> chainingWithThen() {
  return checkOrder()
      .then((_) => prepareOrder())
      .then((_) => deliverOrder());
}

Future<void> checkOrder() async {
  return Future
      .delayed(Duration(seconds: 1),
          () => print('Order checking...')
  );
}

Future<void> prepareOrder() async {
  return Future
      .delayed(Duration(seconds: 1),
          () => print('Order preparing...')
  );
}

Future<void> deliverOrder() async {
  return Future
      .delayed(Duration(seconds: 1),
          () => print('Order delivered...')
  );
}
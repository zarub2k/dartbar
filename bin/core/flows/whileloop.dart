void main(List<String> args) {
  print('### While loop ###');
  doWhileLoop();
}

void whileLoop() {
  var count = 0;
  while(count < 1) {
    print('Evaluates while');
    count++;
  }
}

void doWhileLoop() {
  var count = 1;
  do {
    print('Inside do');
    count++;
  } while (count < 1);
}
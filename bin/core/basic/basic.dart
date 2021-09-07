void main(List<String> arguments) {
  print(fibonacci(6));
  print(oddOrEven(6));
}

int fibonacci(int value) {
  if (value == 0 || value == 1) {
    return value;
  } else {
    return fibonacci(value - 1) + fibonacci(value - 2);
  }
}

bool oddOrEven(int value) {
  return (value % 2 == 0) ? true : false;
}
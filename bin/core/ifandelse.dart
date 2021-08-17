void main(List<String> args) {
  print('### If and else ###');
  oddOrEven(5);
  oddOrEven(0);
  oddOrEven(6);
}

void oddOrEven(int value) {
  if (value == 0) {
    print('Given number is neither even nor odd');
  } else if (value % 2 == 0) {
    print('Given number $value is even');
  } else {
    print('Given number $value is odd');
  }
}
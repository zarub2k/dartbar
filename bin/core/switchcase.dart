void main(List<String> args) {
  print('### Switch and case ###');
  fallthroughWithDelegate();
}

void fallthroughWithDelegate() {
  var commands = ['ON', 'OFF', 'PAUSE'];
  for (var command in commands) {
    switch(command) {
      case 'PAUSE':
        print('Execute \'PAUSE\' for $command');
        continue postPause;
      case 'ON':
        print('Execute \'ON\' for $command');
        break;

      postPause:
      case 'OFF':
        print('Execute \'OFF\' for $command');
        break;
    }
  }
}

void fallthroughCase() {
  var commands = ['ON', 'OFF', 'PAUSE'];
  for (var command in commands) {
    switch(command) {
      case 'PAUSE':
      case 'ON':
        print('Execute \'ON\' for $command');
        break;

      case 'OFF':
        print('Execute \'OFF\' for $command');
        break;
    }
  }
}

void switchCase() {
  var commands = ['ON', 'OFF', 'PAUSE'];
  for (var command in commands) {
    switch(command) {
      case 'ON':
        print('Execute \'ON\' command');
        break;

      case 'OFF':
        print('Execute \'OFF\' command');
        break;
    }
  }
}
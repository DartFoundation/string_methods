import 'dart:io';

void main(List<String> args) {
  File f = File('README.md');
  f.writeAsStringSync('');
  File f2 = File('lib/homework.txt');
  String text = f2.readAsStringSync();
  List<String> lines = text.split('\n');
  for (int i = 0; i < lines.length; i++) {
    print(i);
    if (lines[i].contains(RegExp('^Task [0-9]+:'))) {
      print(lines[i]);
      File f = File('README.md');
      f.writeAsStringSync("# ${lines[i]}\n### ${lines[i + 1]}\n", mode: FileMode.append);
    }
  }
}

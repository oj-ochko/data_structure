import 'package:ring_buffer/test_lib.dart';

void main() {
  var team = Corp();
  team.addEmployee("OJ", 'COO', '22', '5,000,000');
  team.addEmployee("Anand", 'CEO', '23', '7,000,000');
  team.addEmployee("Temuujin", 'CFO', '22', '6,000,000');
  print(team.peek('OJ'));
  print(team.peek('Anand'));
  print(team.peek('Temuujin'));
}

import 'package:data_structure/test_lib.dart';

void main() {
  var team = Corp();
  team.addEmployee("OJ", 'COO', '22', '5,000,000');
  team.addEmployee("Anand", 'CEO', '23', '7,000,000');
  team.addEmployee("Temuujin", 'CFO', '22', '6,000,000');

  print(team);

  team.changeName("OJ", "Ochir");
  team.changePosition("Ochir", "cleaner");
  team.changeAge("Ochir", "30");

  print(team);

  team.changeSalary("Ochir", "1");

  team.peek("Anand");
  team.peek("Temuujin");
  team.peek("Ochir");
}

import 'package:ostadmoduleassignmentss/savignsAndCurrent.dart';

void main() {
  SavingsAccount saveaccount =
  SavingsAccount(accountNumber: 210155555, balance: 1000, interestRate: 0.05);
  print('Savings Account Balance: ${saveaccount.balance}');
  saveaccount.deposit(2000);
  print('Savings Account Balance After Deposit: ${saveaccount.balance}');

  saveaccount.interest();
  print('Savings Account Balance after interest: ${saveaccount.balance}');

  saveaccount.withdraw(1000);
  print('Savings Account Balance after withdrawal with interest: ${saveaccount.balance}');

  print('');

  CurrentAccount curAccount = CurrentAccount(accountNumber: 412540012, balance: 2000, overdraftLimit: 1000);
  print('Current Balance: ${curAccount.balance}');
  curAccount.deposit(5000);
  print('Current Balance After Deposit: ${curAccount.balance}');

  curAccount.withdraw(500);
  print('Current Balance after withdrawal: ${curAccount.balance}');
}

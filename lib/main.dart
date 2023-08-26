import 'package:ostad_dart_assignment/savignsAcoount.dart';

void main(){
  SavngsAccount saveaccount = SavngsAccount(interestRate: 10, accountNumber: 210155555, balance: 1000);

  saveaccount.deposit(2000);
  print('Savings Account Balance After Deposit : ${saveaccount.balance}');
  saveaccount.withdraw(1000);
  print('Savigns Account Balance after withdrawal with interest rate :${saveaccount.balance}');



  CurrentAccount curAccount = CurrentAccount(balance: 2000, accountNumber: 412540012, overdraftLimit: 1000);
  curAccount.deposit(5000);
  print('Balance After Deposit : ${curAccount.balance}');
curAccount.withdraw(500);
print('Balace After WithDrwal : ${curAccount.balance}');


}


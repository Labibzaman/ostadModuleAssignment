abstract class Account {
  int accountNumber;
  double balance=0;
  Account(this.accountNumber,this.balance);

  void deposit(double amount){
    balance +=amount;
  }
  withdraw(double amount);
}


class SavngsAccount extends Account{
  double interestRate;
  SavngsAccount ({required this.interestRate,required accountNumber, required double balance})
      : super(accountNumber,balance );
  @override
  withdraw(double amount) {
 if( amount <= balance){
   balance -= amount;
   balance += balance * interestRate;
 }else
   {
     print('Insufficient Funds');
   }
  }

}

class CurrentAccount extends Account {
  double overdraftLimit = 0;

  CurrentAccount({required accountNumber, required double balance,required this.overdraftLimit})
      : super(accountNumber,balance );

  @override
  void withdraw(double amount) {
    double totalLimit =balance + overdraftLimit;
  if(amount <= totalLimit){
    balance -=amount;
  } else{
    print("insuffient balance");
  }
}


}
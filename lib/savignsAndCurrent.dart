abstract class Account {
  ///initialize account number and balance
  int accountNumber;
  double balance = 0;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);///abstract method
}

class SavingsAccount extends Account { ///savings account inherits Account class
  double interestRate; ///additional property for savings Account

  SavingsAccount(
      {required int accountNumber, required double balance, required this.interestRate})
      : super(accountNumber, balance); ///there is a super keyword means this is inheriting from account class

  @override ///deposit method
  void deposit(double amount) {
    balance += amount;
    print('Succesfully deposited $amount');
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      interest();  ///calling

      print('Withdrawal of $amount is successful');
    } else {
      print('Insufficient funds');
    }
  }

  void interest() { ///created a interest method to calculate balance with interest
    balance += balance * interestRate;
  }
}

class CurrentAccount extends Account {
  ///overdraft limit set for current account
  double overdraftLimit = 0;

  CurrentAccount(
      {required int accountNumber, required double balance, required this.overdraftLimit})
      : super(accountNumber, balance); ///there is a super keyword means this is inheriting from account class

  @override
  void deposit(double amount) {
    balance += amount;
    print('Succesfully deposited $amount');
  }

  @override
  void withdraw(double amount) {
    double totalLimit = balance + overdraftLimit; /// stored the total limit

    if (amount <= totalLimit) {
      balance -= amount;
      print('Withdrawal of $amount is successful');
    } else {
      print("Insufficient balance");
    }
  }


}
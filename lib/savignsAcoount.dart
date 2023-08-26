abstract class Account {
  int accountNumber;
  double balance = 0;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(
      {required int accountNumber, required double balance, required this.interestRate})
      : super(accountNumber, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print('Succesfully deposited $amount');
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      interest();
      print('Withdrawal of $amount is successful');
    } else {
      print('Insufficient funds');
    }
  }

  void interest() {
    balance += balance * interestRate;
  }
}

class CurrentAccount extends Account {
  double overdraftLimit = 0;

  CurrentAccount(
      {required int accountNumber, required double balance, required this.overdraftLimit})
      : super(accountNumber, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print('Succesfully deposited $amount');
  }

  @override
  void withdraw(double amount) {
    double totalLimit = balance + overdraftLimit;

    if (amount <= totalLimit) {
      balance -= amount;
      print('Withdrawal of $amount is successful');
    } else {
      print("Insufficient balance");
    }
  }


}
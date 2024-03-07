class BankAccount {
  String accountNumber;
  float balance;
  String owner;

  BankAccount(String accountNumber, float initialBalance, String owner) {
    this.accountNumber = accountNumber;
    this.balance = initialBalance;
    this.owner = owner;
  }

  void withdraw(float amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      println("Opname van €" + amount + " succesvol. Nieuw saldo: €" + balance);
    } else {
      println("Ongeldige opname. Saldo ontoereikend.");
    }
  }

  void deposit(float amount) {
    if (amount > 0) {
      balance += amount;
      println("Storting van €" + amount + " succesvol. Nieuw saldo: €" + balance);
    } else {
      println("Ongeldige storting. Bedrag moet positief zijn.");
    }
  }

  void showBalance() {
    println("Huidig saldo voor rekening " + accountNumber + ": €" + balance);
  }
}

void setup() {

  BankAccount aliceAccount = new BankAccount("NL123456789", 1000, "Alice");

  aliceAccount.withdraw(200);
  aliceAccount.deposit(500);

  aliceAccount.showBalance();
}

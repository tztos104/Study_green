package banking.banking_db;

public class Account {
	private  String ano;
	private  String owner;
	private  int balance;
	
	
	
	public Account(String ano, String owner, int balance) {
		this.ano = ano;
		this.owner= owner;
		this.balance=balance;
					
	}
	public   String getAno() {
		return ano;
	}
	public String getOwner() {
		return owner;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	
	public int getBalance() {
		return balance;
	}
}

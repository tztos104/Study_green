package taketrans;

public class Main {

	public static void main(String[] args) {
		// 사람객체생성
		Person inbi = new Person("박인비", 10000);
		Person nara = new Person("이나라", 5000);
		
		Bus bus100 = new Bus(100);
		
		inbi.takeBus(bus100);
		nara.takeBus(bus100);
		
		inbi.showInfo();
		nara.showInfo();
		bus100.showInfo();
		

	}

}
package interfaceex.tire;

public class Car2 {
	//필드 -객체 배열
	Tire[] tires = {
			new HanTire(), //0번
			new HanTire(), //1번
			new KumTire(), //2번
			new KumTire() //0번
			
	};
	
	
	//매서드
	public void run() {
		/*for(int i=0; i<tires.length; i++) {
			tires[i].roll();
		}*/
		for(Tire tire : tires)
			tire.roll();
	
	
	}
	
	
}//class car 끝

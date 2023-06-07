package gugudan;

public class GuguBean {

	//구구단 계산 각 값을 배열로 처리하는 매서드
	public int[] times(int dan) {
		int[] gugu = new int[19]; //19개 저장할 정수형 배열 선언
		
		for(int i =1; i<20; i++) {
			gugu[i-1] = dan * i;
		}
		
		return gugu; //배열로 반환
	}
	
}

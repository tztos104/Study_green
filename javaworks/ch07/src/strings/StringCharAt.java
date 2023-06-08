package strings;

public class StringCharAt {

	public static void main(String[] args) {
		//문자열 함수
		
		String subject = "자바 프로그래밍";
		char charValue = subject.charAt(0);
		System.out.println(charValue);
		
		//주민번호에서 남여 구분
		String ssn = "940815-5234567";
		char gender = ssn.charAt(7); // '-'
		switch(gender) {
		case '1' : case '3' :
			System.out.println("남자입니다."); break;
		case '2' : case '4' :
			System.out.println("여자입니다."); break;
		default:
			System.out.println("누구세요?");
		}
		//lasetIndexOf()
		String uri = "/board/boardlist.jsp";
		int uri_idx1 = uri.indexOf('/'); //앞에서 부터 찾음
		System.out.println(uri_idx1);
		int uri_idx2 = uri.lastIndexOf('/');//뒤에서부터 찾음
		System.out.println(uri_idx2);
	}

} 
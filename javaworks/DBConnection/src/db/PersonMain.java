package db;

import java.util.ArrayList;

public class PersonMain {

	public static void main(String[] args) {
		PersonDAO dao = new PersonDAO();

		// 자료 삽입
		/*Person p1 = new Person("test", "test1234", "테스터", 999);
		 dao.insertPerson(p1); // PersonDAO의 insertPerson() 호출
*/
		
//		  //자료 1개 검색 
//		  Person person = dao.getPerson("test"); 
//		  String userId = person.getUserId(); 
//		  String userPw = person.getUserPw(); 
//		  String name=person.getName(); 
//		  int age = person.getAge();
//		 
//
//		 System.out.printf("아이디: %s, 비밀번호: %s\n이름: %s, 나이: %d\n", userId, userPw, name, age);
//		// System.out.println();

		//자료 삭제
		//dao.deletePerson("test");
		
		//자료 수정 -아이디'cloud 인 사람 검색
		Person cloud =dao.getPerson("cloud");
		cloud.setName("zzzz드");
		cloud.setAge(20);
		//수정
		dao.updatePerson(cloud);
		
		
		
		System.out.println("===============================");

		// person 자료 검색(전체 목록 조회)
		ArrayList<Person> personList = dao.getPersonList();

		for (int i = 0; i < personList.size(); i++) {
			if (personList.get(i) != null) {
				Person person = personList.get(i); // ArrayList 요소 가져오기

				String userId = person.getUserId();
				String userPw = person.getUserPw();
				String name = person.getName();
				int age = person.getAge();

				System.out.printf("아이디: %s, 비밀번호: %s\n이름: %s, 나이: %d\n", userId, userPw, name, age);

			}
		}

	}

}
package randoms;

import java.util.Scanner;

public class TypingGame {
   public static void main(String[] args) {
      String[] words = {"bird", "ladybug", "mouse", "horse", "panda",
                  "rat", "moon", "earth", "river", "flower"};
      int n = 1;
      double start, end;
      Scanner scan = new Scanner(System.in);
      
      System.out.println("♠ 영어 타자게임 ♠ < 준비 되면 엔터! >");
      scan.nextLine();
      start = System.currentTimeMillis();
      while(n < 11) {
         int rand = (int)(Math.random()*words.length);  
         System.out.println("문제" + n);
         String question = words[rand];
         System.out.println(question); // 화면에 문제 표시
         
         String answer = scan.nextLine();
         if(answer.equals(question)) {
            System.out.println("통과!");
            n++;
         }else {
            System.out.println("오타! 다시 도전!");
         }
      }
      end = System.currentTimeMillis();
      System.out.printf("게임 소요 시간은 %.2f초 입니다.", (end-start)/ 1000);
      scan.close();
      
            
      
   }
}
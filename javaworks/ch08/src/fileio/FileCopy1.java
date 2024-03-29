package fileio;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileCopy1 {

	public static void main(String[] args) {
		//이미지 파일을 읽고 쓰기(복사)
		String originFile= "c:/file/dog.jpg"; //원본파일
		String copyFile= "c:/file/dog1.jpg"; //사본파일
		FileInputStream fis = null;
		FileOutputStream fos =null;
		try {
			fis = new FileInputStream(originFile);
			fos = new FileOutputStream(copyFile);
			int i;
			while((i=fis.read()) != -1 ) { //이미지 파일 읽어서
				fos.write(i); //이미지쓰기
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fis.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("복사완료");
	}//메인끝

}

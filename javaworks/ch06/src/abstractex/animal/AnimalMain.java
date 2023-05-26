package abstractex.animal;

public class AnimalMain {

	public static void main(String[] args) {
		//고양이 객체 생성
		Animal cat = new Cat();
		Animal dog = new Dog();
		
		cat.breathe();
		//cat.sound();
		cat.showInfo();
		
		//dog.sound();
		animalSound(dog);
		animalSound(cat);
		
	}

	//매개 변수의 다형성
	private static void animalSound(Animal animal) {
		animal.sound();
		
	}
	
}

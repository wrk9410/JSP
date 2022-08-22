import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Main2 {

	public static void main(String[] args) throws JsonProcessingException {
		Person hong = new Person("홍길동", 22);

		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(hong); // put, set 없이 바로 json 객체 형태로 표현

		System.out.println(json);
		
		String jsonString = "{\"name\":\"둘리\",\"age\":23}";
		Person dooli = mapper.readValue(jsonString, Person.class);
		// 문자열로 표현한 json 객체를 mapper에 전달해주고 어떤 형태인지만 입력하면 적용 가능
		/*주의!
		 * 1.서식이 일치하지 않을 경우 예외발생 
		 * 2.기본생성자(빈생성자)가 없을 경우 예외발생
		 */
		
		System.out.println(dooli.getName());
		System.out.println(dooli.getAge());
	}

}

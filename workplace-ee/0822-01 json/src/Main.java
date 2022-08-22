import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class Main {
	public static void main(String[] args) throws JsonProcessingException {
		// 사람
		// 이름 = 홍길동
		// 나이 = 22
		
		ObjectMapper mapper = new ObjectMapper();
		ObjectNode node = mapper.createObjectNode();
		// 이렇게 하면 json 객체 하나를 만들 수 있음
		
		node.put("name", "홍길동");
		node.put("age", 22);
		node.put("boolean", true);
		
		ObjectNode node2 = mapper.createObjectNode();
		node2.put("이름", "둘리");
		node2.put("나이", 23);
		
//		node.put("bj", node2); // json 객체 안에 다른 json 객체도 들어갈 수 있음
		node.set("bj", node2); // put 대신 set으로 가능, put은 줄 그여있음
		
		
		String json = mapper.writeValueAsString(node); // 이렇게 할 경우 json을 문자열로 변경가능 | javascript에서 가져온 것이기에 type도 그대로 물려받음(입력한대로 적용)
		System.out.println(json);
		
		
	}
}

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.Buffer;

import com.example.AppleSearchResult;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Main3 {
	public static void main(String[] args) throws UnsupportedEncodingException, MalformedURLException {
		String apiURL = "https://itunes.apple.com/search?&term=";

		String requestURL = apiURL + URLEncoder.encode("아이유", "UTF-8");

		URL url = new URL(requestURL);
		HttpURLConnection conn = null;

		try {
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			int responseCode = conn.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) {
				// 응답 body를 확인해야함 | inputStream 필요
				String respBody = readBody(conn.getInputStream());

//				System.out.println(respBody); // json으로 이루어진 아이유의 검색 결과를 받아옴
				/* java pojo를 활용하여 getter,setter가 있는 객체를 만들 수 있음 */

				ObjectMapper mapper = new ObjectMapper();
				AppleSearchResult apple = mapper.readValue(respBody, AppleSearchResult.class);
				System.out.println(apple.getResultCount());
				// 1.길어서 pojo에 preview가 안될 경우 search?옆에 limit=1을 추가
				// 2.만들고 나서 limit 지우면 결과 여러개 나옴
				
				// httpbin 요청보내기 연습하는 사이트
			}

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect();
			}
		}
	}

	private static String readBody(InputStream inputStream) throws IOException {
		// 응답 body 확인 메소드
		BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
		StringBuilder sb = new StringBuilder();

		String line;
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		return sb.toString();
	}
}

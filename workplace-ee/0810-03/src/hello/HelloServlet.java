package hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	private int some = 10;
	
	public HelloServlet() {
		super();
		System.out.println("헬로 서블릿 생성자는 언제 호출되나요?");
		// 서블릿이 요청될 때 생성자가 호출됨
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		some++;
		System.out.println("필드값: " + some);
		// 필드값을 가지게 되면 동시에 접속할 경우 실행이 되기에 주의!
		
		PrintWriter pw = resp.getWriter();
		pw.println(req.getRequestURI());
		pw.flush();
	}
}

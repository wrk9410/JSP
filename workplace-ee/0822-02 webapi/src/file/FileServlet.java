package file;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/fileupload")
@MultipartConfig(location = "d:\\temp", fileSizeThreshold = 10 * 1024 * 1024, maxFileSize = 50 * 1024 * 1024)
// fileSizeThreshold: 우측의 사이즈가 넘어갈 경우 임시 폴더를 사용하겠다는 명령어 | maxFileSize: 최대용량 설정
public class FileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part p = req.getPart("fileupload"); // Part로 값을 가져오면 파일을 가져올 수 있음
		System.out.println(p.getName());
		System.out.println(p.getSubmittedFileName());
		for (String header : p.getHeaderNames()) {
			System.out.println(header + " : " + p.getHeader(header));
		}
		
		String contextPath = getServletContext().getRealPath("");
		
		System.out.println(contextPath); // 파일 업로드 요청 하여야 실행됨
		
		Path directory = Paths.get(contextPath);
		Files.copy(p.getInputStream(), directory.resolve(p.getSubmittedFileName()), StandardCopyOption.REPLACE_EXISTING);
		
		resp.sendRedirect("/" + URLEncoder.encode(p.getSubmittedFileName(), "UTF-8"));
	}

}

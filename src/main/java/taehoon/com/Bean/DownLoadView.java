package taehoon.com.Bean;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownLoadView extends AbstractView{

	public DownLoadView() {
		this.setContentType("application/download:UFT-8");
	}
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType(this.getContentType());
		File file=(File)model.get("downloadFile");
		response.setContentLength((int)file.length());
		String userAgent = request.getHeader("User-Agent");
		System.out.println(userAgent);
		boolean is = userAgent.indexOf("MSIE")>-1;
		String fileName="";
		if(is) {
			fileName=URLEncoder.encode(file.getName(),"UTF-8");
		}else {
			fileName = new String(file.getName().getBytes("UTF-8"));
		}
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		OutputStream out = response.getOutputStream();
		FileInputStream fis=null;
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} catch (Exception e) {
			// TODO: handle exception
		}
		out.flush();
		System.out.println(fileName);
	}
	
}

package mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class FileController {

	@Autowired ServletContext context;


	@ResponseBody
	@RequestMapping(value="/fileup",method=RequestMethod.POST)
	public Map<String, Object> fileupload(MultipartFile file) {
		
		System.out.println(UUID.randomUUID().toString());
		
		String uniqueId= UUID.randomUUID().toString();
		String uid = uniqueId.split("-")[0];
		
		String realpath = context.getRealPath("resources/img");
		String stored = uid+"_"+file.getOriginalFilename();
		
		File dest = new File(realpath,stored); 
		
		try {
			file.transferTo(dest);
			System.out.println(dest);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("stored",stored);

		return map;
		
		
	}
}

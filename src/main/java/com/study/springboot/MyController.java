package com.study.springboot;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

@Controller
public class MyController {

    @RequestMapping("/")
    public  String root() throws Exception{
        return "main";
    }
    @RequestMapping("/club")
   	public String clubboard() {

   		return "membership/clubboard";
   	}
    @RequestMapping("/review")
   	public String reviewboard() {

   		return "membership/reviewboard";
   	}
    @RequestMapping("/wrtb")
	public String wrtieboard() {

		return "membership/writeboard";
	}
    @RequestMapping("/findpro")
    public String findpro() {
    	
    	return "findpro";
    }
    @RequestMapping("/login")
	public String loginForm() {

		return "loginform";
	}

    @RequestMapping("/fail")
    public String fail() {
    	
    	return "fail";
    }
    @RequestMapping("/inte")
    public String logirm() {
    	
    	return "membership/introduce";
    }
    @RequestMapping("/ad3")
    public String ad3() {
    	
    	return "admin/adpage3";
    }
    @RequestMapping("/ad2")
   	public String ad2() {

   		return "admin/adpage2";
   	}
    @RequestMapping("/writeform")
    public String write() {
       
       return "write";
    }
 @RequestMapping("/viewboard")
    public String view() {

       return "board/viewboard";
    }
    
    @RequestMapping("/editboard")
    public String edit() {

       return "board/editboard";
    }
    @RequestMapping("/ad1")
   	public String ad1() {

   		return "admin/adpage1";
   	}
    @RequestMapping("/register")
	public String register() {

		return "signupform";
	}
	@RequestMapping("/uploadForm")
	public String uploadForm() {

		return "FileUpload/fileForm";
	}
	@RequestMapping("/free")
	   public String freeboard() {

	      return "board/freeboard";
	   }
	@RequestMapping("/mypage")
	public String mypage() {
		
		return "membership/mypage";
	}
	@RequestMapping("/ques")
	public String questionboard	() {
		
		return "board/questionboard";
	}
	@RequestMapping("/prf")
	public String profile() {

		return "membership/profile";
	}
	@RequestMapping("/profileC")
	public String profileC() {

		return "membership/profile2";
	}

	@RequestMapping("/uploadOk")
	public String uploadOk(HttpServletRequest request) {
	    try {
	    	String filePath = "C:/DevData/SpringBoot/pro4/src/main/webapp/img/profIMG";
	        System.out.println(filePath);

	        // Retrieves <input type="file" name="files" multiple="true">
	        List<Part> fileParts = request.getParts().stream()
	                .filter(part -> "filename".equals(part.getName()) && part.getSize() > 0)
	                .collect(Collectors.toList());
	        
	        for (Part filePart : fileParts) {
	            String fileName = Paths.get(filePart.getSubmittedFileName())
	                    .getFileName().toString();
	            
	            // Get a unique file name
	            String uniqueFileName = getUniqueFileName(filePath, fileName);

	            String dst = filePath + "\\" + uniqueFileName;
	            
	            try (BufferedInputStream fin = new BufferedInputStream(filePart.getInputStream());
	                 BufferedOutputStream fout = new BufferedOutputStream(new FileOutputStream(dst))) {
	                int data;
	                while (true) {
	                    data = fin.read();
	                    if (data == -1)
	                        break;
	                    fout.write(data);
	                }
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	            System.out.println("Uploaded profile_Filename: " + uniqueFileName);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "membership/profile2";
	}

	private String getUniqueFileName(String filePath, String originalFileName) {
	    String fileName = originalFileName;
	    String extension = "";

	    int dotIndex = originalFileName.lastIndexOf(".");
	    if (dotIndex >= 0) {
	        extension = originalFileName.substring(dotIndex);
	        fileName = originalFileName.substring(0, dotIndex);
	    }

	    String dst = filePath + "\\" + fileName + extension;
	    int count = 1;

	    while (new File(dst).exists()) {
	        fileName = originalFileName.substring(0, dotIndex) + "_" + count;
	        dst = filePath + "\\" + fileName + extension;
	        count++;
	    }

	    return fileName + extension;
	}
}

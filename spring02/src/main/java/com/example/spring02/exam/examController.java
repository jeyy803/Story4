package com.example.spring02.exam;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class examController {
	//로깅을 위한 코드 (서버의 부담을 줄임,로그를 활용하기 위해 (examController.class 사용내역 저장))
	private static final Logger logger
	  = LoggerFactory.getLogger(examController.class);
	
	//servlet-context.xml에 선언한 스트링 bean참조
	@Resource(name="uploadPath")
	String uploadPath;
	@RequestMapping("upload.do")
	public String upload() {
		return "exam/exam6";
	}
	
	@RequestMapping(value="/exam/examUpload", method=RequestMethod.POST)
	public ModelAndView uploadForm(MultipartFile file, ModelAndView mav) throws Exception{
			String savedName=file.getOriginalFilename();
			savedName = uploadFile(savedName, file.getBytes());
			mav.setViewName("exam/exam6Result");
			mav.addObject("savedName", savedName);
			return mav;
		}
	String uploadFile(String originalName, byte[] fileData) throws Exception{
		UUID uid=UUID.randomUUID();
		String savedName=uid.toString()+"_"+originalName;
		File target=new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

}

package com.sample.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sample.service.BoardService;
import com.sample.vo.BoardVO;

@Controller
@RequestMapping(value = "/")
public class BoardController {

	@Inject
	private BoardService service;

	@RequestMapping(value = "/boardList", method = RequestMethod.GET) // 주소 호출
																		// 명시.
																		// 호출하려는주소
																		// 와
																		// REST
																		// 방식설정(GET)
	public void listAll(Model model) throws Exception { // 메소드 인자값은 model
														// 인터페이스(jsp전달 심부름꾼)
		model.addAttribute("list", service.listAll()); // jsp에 심부름할 내역(서비스 호출)
	}

	@RequestMapping(value = "/boardRegist", method = RequestMethod.GET) // GET
																		// 방식으로
	// 페이지 호출
	public void registerGET(BoardVO board, Model model) throws Exception {
	}

	@RequestMapping(value = "/boardRegist", method = RequestMethod.POST) // POST방식으로
	// 내용 전송
	public String registPOST(BoardVO board, RedirectAttributes rttr) throws Exception { // 인자값으로
		// REDIRECT
		// 사용
		service.regist(board); // 글작성 서비스 호출
		return "redirect:/boardList"; // 작성이 완료된 후, 목록페이지로 리턴
	}

	@RequestMapping(value = "/boardRead", method = RequestMethod.GET) // GET
																		// 방식으로
																		// 페이지
	// 호출
	public void read(@RequestParam("bno") int bno, Model model) throws Exception {
		// 인자값은 파라미터 값으로 기본키인 글번호를 기준으로 Model을 사용하여 불러옴
		model.addAttribute(service.read(bno)); // read 서비스 호출
	}

	@RequestMapping(value = "/boardModify", method = RequestMethod.GET) // GET
																		// 방식으로
	// 페이지 호출
	public void modifyGET(int bno, Model model) throws Exception {
		model.addAttribute(service.read(bno)); // 수정을 위한 글읽기 서비스 호출
	}

	@RequestMapping(value = "/boardModify", method = RequestMethod.POST) // POST방식으로
	// 데이터 전송
	public String modifyPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		service.modify(board); // 글수정 서비스 호출
		return "redirect:/listAll"; // 수정이 완료된 후, 목록페이지로 리턴
	}

	@RequestMapping(value = "/boardremove", method = RequestMethod.POST) // POST방식으로
	// 데이터 전송
	public String removePOST(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception {
		service.remove(bno); // 글삭제 서비스 호출
		return "redirect:/boardList"; // 삭제가 완료된 후, 목록페이지로 리턴
	}
}

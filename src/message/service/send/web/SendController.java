package message.service.send.web;

import java.util.Map;

import message.service.send.dao.impl.SendDaoImpl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SendController {
	
	private static final Logger logger =  LoggerFactory.getLogger(SendController.class);
	
	@Autowired
	protected SendDaoImpl boardDao;
	
	@RequestMapping("/notice/springBoard.do")
	public void hello(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		model.put("message", "안녕");
		model.put("button", "/notice/springBoards.do");
		model.put("results", boardDao.countBoard());
	}
	
	@RequestMapping("/notice/springBoards.do")
	public ModelAndView helloView() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "그래");
		mv.addObject("button", "/notice/springBoard.do");
		mv.addObject("results", boardDao.countBoard());
		mv.setViewName("/notice/springBoard");
		return mv;
	}
}

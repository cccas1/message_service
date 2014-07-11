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
	
	@RequestMapping("/send/sendMessage")
	public void sendMessage(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		
	}
	
	/*@RequestMapping("/send/sendMessage.do")
	public ModelAndView helloView() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/send/sendMessage");
		return mv;
	}*/
}

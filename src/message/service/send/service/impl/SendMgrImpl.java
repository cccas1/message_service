package message.service.send.service.impl;

import java.util.List;
import java.util.Map;

import message.service.send.dao.SendDao;
import message.service.send.service.SendMgr;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RemoteProxy(name="BoardMgr")
public class SendMgrImpl implements SendMgr{
	
	@Autowired
	private SendDao boardDao;
	
	@RemoteMethod
	@Override
	public List<Map<String, String>> getAllBoardLists() throws Exception {
		return boardDao.countBoard();
	}

}

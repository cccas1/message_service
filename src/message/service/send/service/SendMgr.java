package message.service.send.service;

import java.util.List;
import java.util.Map;

public interface SendMgr {
	public List<Map<String, String>> getAllBoardLists() throws Exception;
}

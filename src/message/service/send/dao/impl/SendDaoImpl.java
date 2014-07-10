package message.service.send.dao.impl;

import java.util.List;
import java.util.Map;

import message.service.send.dao.SendDao;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


@Repository("SendDaoImpl")
public class SendDaoImpl extends SqlSessionDaoSupport implements SendDao{

	@Override
	public List<Map<String, String>> countBoard() {
		return getSqlSession().selectList("sendDao.countBoard");
	}

}

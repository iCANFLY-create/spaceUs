package com.kh.spaceus.host.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spaceus.host.model.dao.HostDAO;
import com.kh.spaceus.host.model.vo.Qna;

@Service
public class HostServiceImpl implements HostService {

	@Autowired
	private HostDAO hostDAO;
	
	@Override
	public List<Qna> selectUnreplied(String spaceId) {
		return hostDAO.selectUnreplied(spaceId);
	}

}

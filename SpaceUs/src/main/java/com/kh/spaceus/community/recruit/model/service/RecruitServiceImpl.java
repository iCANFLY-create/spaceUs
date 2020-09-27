package com.kh.spaceus.community.recruit.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spaceus.community.recruit.model.dao.RecruitDAO;
import com.kh.spaceus.community.recruit.model.vo.Recruit;
import com.kh.spaceus.space.model.dao.SpaceDAO;
import com.kh.spaceus.space.model.vo.Tag;

@Service
public class RecruitServiceImpl implements RecruitService{
	
	@Autowired
	private RecruitDAO recruitDAO;

	@Override
	public int insertRecruit(Recruit recruit) {
		return recruitDAO.insertRecruit(recruit);
	}

	@Override
	public List<Recruit> selectRecruitList(int limit, int offset) {
		return recruitDAO.selectRecruitList(limit, offset);
	}

	@Override
	public int selectRecruitTotalContents() {
		return recruitDAO.selectRecruitTotalContents();
	}

	@Override
	public Recruit selectOneRecruit(String no) {
		return recruitDAO.selectOneRecruit(no);
	}

	@Override
	public int updateRecruit(Recruit recruit) {
		return recruitDAO.updateRecruit(recruit);
	}

	@Override
	public int deleteRecruit(String no) {
		return recruitDAO.deleteRecruit(no);
	}



	

}
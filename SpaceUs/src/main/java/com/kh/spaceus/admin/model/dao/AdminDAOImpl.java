package com.kh.spaceus.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spaceus.admin.model.vo.ManageBlackList;
import com.kh.spaceus.admin.model.vo.ManageMember;
import com.kh.spaceus.community.group.model.vo.GroupBoard;
import com.kh.spaceus.community.group.model.vo.Report;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public List<ManageMember> selectList() {
		return session.selectList("admin.selectList");
	}

	@Override
	public List<ManageMember> findUserIdList(String searchKeyword) {
		return session.selectList("admin.findUserIdList", searchKeyword);
	}

	@Override
	public List<ManageMember> findUserNameList(String searchKeyword) {
		return session.selectList("admin.findUserNameList", searchKeyword);
	}

	@Override
	public List<ManageMember> findUserRoleList(String searchKeyword) {
		return session.selectList("admin.findUserRoleList", searchKeyword);
	}

	@Override
	public List<ManageBlackList> selectGroupList() {
		return session.selectList("admin.selectGroupList");
	}

	@Override
	public List<ManageBlackList> selectRecruitList() {
		return session.selectList("admin.selectRecruitList");
	}

	@Override
	public List<Report> selectReasonList(String reportBoardNo) {
		return session.selectList("admin.selectReasonList",reportBoardNo);
	}

	@Override
	public List<GroupBoard> selectGBList() {
		return session.selectList("admin.selectGBList");
	}
	
	
	
	
}

package com.kh.spaceus.space.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.spaceus.space.model.dao.SpaceDAO;
import com.kh.spaceus.space.model.vo.Review;
import com.kh.spaceus.space.model.vo.ReviewAttachment;
import com.kh.spaceus.space.model.vo.Space;
import com.kh.spaceus.space.model.vo.Tag;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SpaceServiceImpl implements SpaceService{
	
	@Autowired
	private SpaceDAO spaceDAO;

	@Override
	public Tag selectOneTag(String hashTag) {
		return spaceDAO.selectOneTag(hashTag);
	}
	
	@Override
	public int insertHashTag(String hashTag) {
		return spaceDAO.insertHashTag(hashTag);
	}

	@Override
	public Space selectOneSpace(String spaceNo) {
		return spaceDAO.selectOneSpace(spaceNo);
	}
	
	@Override
	public Space selectOneSpace(int businessNo) {
		return spaceDAO.selectOneSpace(businessNo);
	}

	@Override
	public List<Tag> selectListSpaceTag(String spaceNo) {
		return spaceDAO.selectListSpaceTag(spaceNo);
	}

	@Transactional(rollbackFor = {Exception.class})
	@Override
	public int insertReview(Review review) {
		int result = 0;
		
		//1. review테이블에 insert
		result = spaceDAO.insertReview(review);
		
		//2. attachment테이블에 insert
		//첨부파일수만큼 행 추가
		List<ReviewAttachment> attachList = review.getReviewAtt();
		
		//첨부파일이 있는 경우
		if(attachList != null) {
			for(ReviewAttachment attach : attachList) {
				attach.setReviewNo(review.getReviewNo());
				
				log.debug("attach = {}", attach);
				result = spaceDAO.insertReviewAttahment(attach);
			}
		}
		
		return result;
	}

	/*@Override
	public List<Space> selectListSpaceCollection(String email) {
		return spaceDAO.selectListSpaceCollection(email);
	}*/
	
}

package com.kh.checkmate.board.sharingInformation.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.checkmate.board.sharingInformation.model.vo.SharingInformation;
import com.kh.checkmate.common.model.vo.PageInfo;

@Repository
public class SharingInformationDao {
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("sharingInformationMapper.selectListCount");
	}

	public ArrayList<SharingInformation> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		int limit = pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset,limit);
		
 		return (ArrayList)sqlSession.selectList("sharingInformationMapper.selectList",null,rowBounds);
	}

//	public int insertBoard(SqlSessionTemplate sqlSession, SharingInformation b) {
//		return sqlSession.insert("sharingInformationMapper.insertBoard",b);
//	}
//
//	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
//		return sqlSession.update("sharingInformationMapper.increaseCount",boardNo);
//	}
//
//	public SharingInformation selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
//		return sqlSession.selectOne("sharingInformationMapper.selectBoard",boardNo);
//	}
//
//	public int deleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
//		return sqlSession.update("sharingInformationMapper.deleteBoard",boardNo);
//	}
//
//	public int updateBoard(SqlSessionTemplate sqlSession, SharingInformation b) {
//		return sqlSession.update("sharingInformationMapper.updateBoard",b);
//	}

//	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int boardNo) {
//		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList",boardNo);
//	}
//
//	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
//		return sqlSession.insert("boardMapper.insertReply",r);
//	}
//
//	public ArrayList<Board> selectTopList(SqlSessionTemplate sqlSession) {
//		return (ArrayList)sqlSession.selectList("boardMapper.selectTopList");
//	}
}

package com.example.spring02.model.exam.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring02.model.exam.dto.exam11DTO;

@Repository
public class exam11DAOImpl implements exam11DAO {
	
	@Inject
	SqlSession sqlSession;

	@Override
	public List<exam11DTO> listBook() {
		return sqlSession.selectList("book.list_book");
	}

}

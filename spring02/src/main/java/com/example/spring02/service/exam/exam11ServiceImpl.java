package com.example.spring02.service.exam;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring02.model.exam.dao.exam11DAO;
import com.example.spring02.model.exam.dto.exam11DTO;

@Service
public class exam11ServiceImpl implements exam11Service {
	
	@Inject
	exam11DAO exam11Dao;

	@Override
	public List<exam11DTO> listBook() {
		return exam11Dao.listBook();
	}

}

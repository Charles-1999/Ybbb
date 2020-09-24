package com.hand.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.hand.ssm.dao.MovieDao;
import com.hand.ssm.dto.Movie;
import com.hand.ssm.service.MovieService;

public class MovieServiceImpl implements MovieService{
	
	@Autowired
	MovieDao dao;

	@Override
	public Movie getMovie(long goodId) {
		Movie movie = dao.getMovieById(goodId);
		return movie;
	}

}

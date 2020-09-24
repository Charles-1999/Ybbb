package com.hand.ssm.service;

import org.springframework.stereotype.Service;

import com.hand.ssm.dto.Movie;

@Service
public interface MovieService {

	Movie getMovie(long Id);
}

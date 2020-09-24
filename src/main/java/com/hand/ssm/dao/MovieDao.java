package com.hand.ssm.dao;

import java.util.List;
import com.hand.ssm.dto.Movie;

public interface MovieDao {

	Movie getMovieById(long id);
	
	List<Movie> getAll();
	List<Movie> getHot(String form);
	List<Movie> getNew();
	List<Movie> getUpcoming();
	List<Movie> getMovieList();
	List<Movie> getTvList();
	List<Movie> getMovieByTag(String tag);
	List<Movie> getMovieByType(String type);
	List<Movie> getMovieByAll(Movie movie);
	List<Movie> searchMovie(String query);
	List<Movie> searchMovieID(String query);
	List<Movie> getListByTagTypeForm(Movie movie);
	
	void updateMovie(Movie movie);
	void uploadMovie(Movie movie);
	void delMovie(long id);
}
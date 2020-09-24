package com.hand.ssm.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.hand.ssm.dao.MovieDao;
import com.hand.ssm.dto.Movie;
import com.hand.ssm.dao.CommentDao;
import com.hand.ssm.dto.Comment;
import com.hand.ssm.dao.UserDao;
import com.hand.ssm.dto.User;

@Controller
public class MovieController {

	@Autowired
	MovieDao MovieDao;
	@Autowired
	CommentDao CommentDao;
	@Autowired
	UserDao UserDao;

	@RequestMapping("/index.jsp")
	public String index(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> hotMovieList = MovieDao.getHot("电影");
		List<Movie> hotTvList = MovieDao.getHot("电视剧");
		List<Movie> upcomingList = MovieDao.getUpcoming();
		request.setAttribute("hotMovieList", hotMovieList);
		request.setAttribute("hotTvList", hotTvList);
		request.setAttribute("upcomingList", upcomingList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "home";
	}

	@RequestMapping("/home")
	public String home(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> hotMovieList = MovieDao.getHot("电影");
		List<Movie> hotTvList = MovieDao.getHot("电视剧");
		List<Movie> upcomingList = MovieDao.getUpcoming();
		request.setAttribute("hotMovieList", hotMovieList);
		request.setAttribute("hotTvList", hotTvList);
		request.setAttribute("upcomingList", upcomingList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "home";
	}
	
	@RequestMapping("/ht")
	public String ht(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			request.setAttribute("user", user);
			return "ht";
		}
		return "login";
	}

	@RequestMapping("/ticket")
	public String ticket(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> upcomingList = MovieDao.getMovieByTag("%即将上映%");
		List<Movie> nowList = MovieDao.getMovieByTag("%正在上映%");
		request.setAttribute("upcomingList", upcomingList);
		request.setAttribute("nowList", nowList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "ticket";
	}

	@RequestMapping("/category")
	public String category(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		Movie movie = new Movie();
		movie.setForm("%%");
		movie.setType("%%");
		movie.setRegion("%%");
		List<Movie> movieList = MovieDao.getMovieByAll(movie);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "category";
	}

	@RequestMapping("/movie")
	public String movie(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getMovieList();
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "movie";
	}
	
	@RequestMapping("/movieList")
	public String movieList(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = null;
		String form = request.getParameter("form");
		Movie movie = new Movie();
		movie.setForm(form);
		movie.setType("%%");
		movie.setTag("%%");
		if(request.getParameter("type") != null) {
			String query = request.getParameter("type");
			movie.setType(query);
//			movieList = MovieDao.getMovieByType(query);
			movieList = MovieDao.getListByTagTypeForm(movie);
		}else if(request.getParameter("tag") != null) {
			String query = request.getParameter("tag");
			movie.setTag(query);
//			movieList = MovieDao.getMovieByTag(query);
			movieList = MovieDao.getListByTagTypeForm(movie);
		}
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "movieList";
	}
	
	@RequestMapping("/movieListAll")
	public String movieListAll(Model model, HttpServletRequest request, HttpServletResponse response) {
		String form = request.getParameter("form");
		String type = request.getParameter("type");
		String region = request.getParameter("region");
		Movie movie = new Movie();
		movie.setForm(form);
		movie.setType(type);
		movie.setRegion(region);
		List<Movie> movieList = MovieDao.getMovieByAll(movie);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "movieList";
	}
	
	@RequestMapping("/rankList")
	public String rankList(Model model, HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		List<Movie> movieList = MovieDao.getMovieByType(type);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "rankList";
	}

	@RequestMapping("/tv")
	public String tv(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getTvList();
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "tv";
	}

	@RequestMapping("/rank")
	public String rank(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getMovieList();
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "rank";
	}

	@RequestMapping("/comment")
	public String comment(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getMovieList();
		List<Comment> commentList = CommentDao.getCommentList();
		request.setAttribute("movieList", movieList);
		request.setAttribute("commentList", commentList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "comment";
	}

	@RequestMapping("/details")
	public String details(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		long id = Long.valueOf(request.getParameter("id"));
		Movie movie = MovieDao.getMovieById(id);
		List<Comment> commentList = CommentDao.getCommentListByMId(id);
		request.setAttribute("movie", movie);
		request.setAttribute("commentList", commentList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "details";
	}

	@RequestMapping("/login")
	public String login(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		return "login";
	}

	@RequestMapping("/loginOK")
	public String loginOK(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		if (UserDao.getUserByEmail(email) != null) {
			User user = UserDao.getUserByEmail(email);
			System.out.println("email:" + user.getEmail());
			System.out.println("pwd:" + user.getPwd());
			if (user.getPwd().equals(pwd)) {
				System.out.println("密码正确");
				request.getSession().setAttribute("userId", user.getId());
				if(email.equals("admin")) {
					return "redirect:/ht";
				}
				return "redirect:/home";
			} else {
				System.out.println("密码错误");
			}
		}
		return "login";
	}
	
	@RequestMapping("/logout")
	public String logout(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("userId", null);
		return "redirect:/home";
	}
	
	@RequestMapping("/mbLogout")
	public String mbLogout(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("userId", null);
		return "redirect:/mbHome";
	}

	@RequestMapping("/registerOK")
	public String registerOK(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		if (UserDao.getUserByEmail(email) == null) {
			User user = new User();
			user.setName(uname);
			user.setEmail(email);
			user.setPwd(pwd);
			UserDao.addUser(user);
			System.out.println("name:" + user.getName());
			System.out.println("email:" + user.getEmail());
			System.out.println("pwd:" + user.getPwd());
			System.out.println("注册成功！");
		} else {
			System.out.println("用户已存在，注册失败！");
		}
		return "login";
	}

	@RequestMapping("/writeComment")
	public String writeComment(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		long movieId = Long.valueOf(request.getParameter("movieId"));
		long userId = Long.valueOf(request.getParameter("userId"));
		Comment comment = new Comment();
		comment.setMovieId(movieId);
		comment.setUserId(userId);
		comment.setTitle(title);
		comment.setContent(content);
		CommentDao.insertComment(comment);
		return "redirect:/details?id="+movieId;
	}

	@RequestMapping("/user")
	public String user(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		long userId = (long) request.getSession().getAttribute("userId");
		User user = UserDao.getUserById(userId);
		request.setAttribute("user", user);
		return "user";
	}

	@RequestMapping("/editNameOK")
	public String editNameOK(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		long userId = (long) request.getSession().getAttribute("userId");
		String name = request.getParameter("name");
		User user = UserDao.getUserById(userId);
		String email = user.getEmail();
		user.setName(name);
		UserDao.editName(user);
		request.setAttribute("user", user);
		if(email.equals("admin")) {
			return "redirect:/ht";
		}
		return "redirect:/user";
	}
	
	@RequestMapping("/user-comments")
	public String user_comments(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		long userId = (long) request.getSession().getAttribute("userId");
		List<Comment> commentList = CommentDao.getCommentListByUId(userId);
		User user = UserDao.getUserById(userId);
		request.setAttribute("user", user);
		request.setAttribute("commentList", commentList);
		return "user-comments";
	}
	
	@RequestMapping("/commentDel")
	public String commentDel(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		long commentId = Long.valueOf(request.getParameter("id"));
		CommentDao.delCommentById(commentId);
		long userId = (long) request.getSession().getAttribute("userId");
		User user = UserDao.getUserById(userId);
		String email = user.getEmail();
		if(email.equals("admin")) {
			return "redirect:/commentManagement";
		}
		return "redirect:/user-comments";
	}
	
	@RequestMapping("/search")
	public String search(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String query = request.getParameter("query");
		List<Movie> searchList = MovieDao.searchMovie(query);
		request.setAttribute("searchList", searchList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "search";
	}
	
	@RequestMapping("/movieManagement")
	public String movieManagement(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			List<Movie> allList = MovieDao.getAll();
			request.setAttribute("user", user);
			request.setAttribute("allList", allList);
			return "movieManagement";
		}
		return "login";		
	}
	
	@RequestMapping("/selectMovie")
	public String selectMovie(Model model, HttpServletRequest request, HttpServletResponse response) {
		String form = request.getParameter("form");
		String type = request.getParameter("type");
		String region = request.getParameter("region");
		Movie movie = new Movie();
		movie.setForm(form);
		movie.setType(type);
		movie.setRegion(region);
		List<Movie> movieList = MovieDao.getMovieByAll(movie);
		request.setAttribute("movieList", movieList);
		return "movieManagement-list";
	}
	
	@RequestMapping("/searchMovie")
	public String searchMovie(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String query = request.getParameter("query");
		List<Movie> movieList = MovieDao.searchMovieID(query);
		request.setAttribute("movieList", movieList);
		return "movieManagement-list";
	}
	
	@RequestMapping("/editMovie")
	public String editMovie(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			long id = Long.valueOf(request.getParameter("id"));
			Movie movie = MovieDao.getMovieById(id);
			request.setAttribute("movie", movie);
			request.setAttribute("user", user);
			return "editMovie";
		}
		return "login";	
	}
	
	@RequestMapping("/editMovieOK")
	public String editMovieOK(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			long id = Long.valueOf(request.getParameter("id"));
			String name = request.getParameter("name");
			String director = request.getParameter("director");
			String writer = request.getParameter("writer");
			String actor = request.getParameter("actor");
			String form = request.getParameter("form");
			String type = request.getParameter("type");
			String tag = request.getParameter("tag");
			String region = request.getParameter("region");
			String language = request.getParameter("language");
			String stime = request.getParameter("stime");
			String duration = request.getParameter("duration");
			String score = request.getParameter("score");
			String intro = request.getParameter("intro");
			Movie movie = new Movie();
			movie.setId(id);
			movie.setName(name);
			movie.setDirector(director);
			movie.setWriter(writer);
			movie.setActor(actor);
			movie.setForm(form);
			movie.setType(type);
			movie.setTag(tag);
			movie.setRegion(region);
			movie.setLanguage(language);
			movie.setStime(stime);
			movie.setDuration(duration);
			movie.setScore(score);
			movie.setIntro(intro);
			MovieDao.updateMovie(movie);
			return "redirect:/movieManagement";
		}
		return "login";	
	}
	
	@RequestMapping("/uploadMovie")
	public String uploadMovie(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			request.setAttribute("user", user);
			return "uploadMovie";
		}
		return "login";	
	}
	
	@RequestMapping("/uploadMovieOK")
	public String uploadMovieOK(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			String name = request.getParameter("name");
			String director = request.getParameter("director");
			String writer = request.getParameter("writer");
			String actor = request.getParameter("actor");
			String form = request.getParameter("form");
			String type = request.getParameter("type");
			String tag = request.getParameter("tag");
			String region = request.getParameter("region");
			String language = request.getParameter("language");
			String stime = request.getParameter("stime");
			String duration = request.getParameter("duration");
			String score = request.getParameter("score");
			String intro = request.getParameter("intro");
			Movie movie = new Movie();
			movie.setName(name);
			movie.setDirector(director);
			movie.setWriter(writer);
			movie.setActor(actor);
			movie.setForm(form);
			movie.setType(type);
			movie.setTag(tag);
			movie.setRegion(region);
			movie.setLanguage(language);
			movie.setStime(stime);
			movie.setDuration(duration);
			movie.setScore(score);
			movie.setIntro(intro);
			MovieDao.uploadMovie(movie);
			return "redirect:/movieManagement";
		}
		return "login";	
		
	}
	
	@RequestMapping("/delMovie")
	public String delMovie(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			long id = Long.valueOf(request.getParameter("id"));
			MovieDao.delMovie(id);
			return "redirect:/movieManagement";
		}
		return "login";
	}
	
	@RequestMapping("/userManagement")
	public String userManagement(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			List<User> userList = UserDao.getUserList();
			request.setAttribute("user", user);
			request.setAttribute("userList", userList);
			return "userManagement";
		}
		return "login";
	}
	
	@RequestMapping("/searchUser")
	public String searchUser(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String query = request.getParameter("query");
		List<User> userList = UserDao.searchUser(query);
		request.setAttribute("userList", userList);
		return "userManagement-list";
	}
	
	@RequestMapping("/editUser")
	public String editUser(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			long id = Long.valueOf(request.getParameter("id"));
			String name = request.getParameter("name");
			String newEmail = request.getParameter("email");
			User newUser = new User();
			newUser.setId(id);
			newUser.setName(name);
			newUser.setEmail(newEmail);
			UserDao.editUser(newUser);
			return "redirect:/userManagement";
		}
		return "login";
	}
	
	@RequestMapping("/editpwd")
	public String editpwd(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			long id = Long.valueOf(request.getParameter("id"));
			String pwd = request.getParameter("pwd");
			User newUser = new User();
			newUser.setId(id);
			newUser.setPwd(pwd);
			UserDao.editpwd(newUser);
			return "redirect:/userManagement";
		}
		return "login";
	}
	
	@RequestMapping("/commentManagement")
	public String commentManagement(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			String email = user.getEmail();
			if(!email.equals("admin")) {
				return "redirect:/login";
			}
			List<Comment> commentList = CommentDao.getCommentList();
			request.setAttribute("user", user);
			request.setAttribute("commentList", commentList);
			return "commentManagement";
		}
		return "login";
	}
	
	@RequestMapping("/mbHome")
	public String mbHome(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> hotMovieList = MovieDao.getHot("电影");
		List<Movie> hotTvList = MovieDao.getHot("电视剧");
		List<Movie> upcomingList = MovieDao.getUpcoming();
		request.setAttribute("hotMovieList", hotMovieList);
		request.setAttribute("hotTvList", hotTvList);
		request.setAttribute("upcomingList", upcomingList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbHome";
	}
	
	@RequestMapping("/mbCategory")
	public String mbCategory(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		Movie movie = new Movie();
		movie.setForm("%%");
		movie.setType("%%");
		movie.setRegion("%%");
		List<Movie> movieList = MovieDao.getMovieByAll(movie);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbCategory";
	}
	
	@RequestMapping("/mbSelectMovie")
	public String mbSelectMovie(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String form = request.getParameter("form");
		String type = request.getParameter("type");
		String region = request.getParameter("region");
		Movie movie = new Movie();
		movie.setForm(form);
		movie.setType(type);
		movie.setRegion(region);
		List<Movie> movieList = MovieDao.getMovieByAll(movie);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbSelectMovie-list";
	}
	
	@RequestMapping("/mbDetail")
	public String mbDetail(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		long id = Long.valueOf(request.getParameter("id"));
		Movie movie = MovieDao.getMovieById(id);
		List<Comment> commentList = CommentDao.getCommentListByMId(id);
		request.setAttribute("movie", movie);
		request.setAttribute("commentList", commentList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbDetail";
	}
	
	@RequestMapping("/mbMovie")
	public String mbMovie(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getMovieList();
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbMovie";
	}
	
	@RequestMapping("/mbTv")
	public String mbTv(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getTvList();
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbTv";
	}
	
	@RequestMapping("/mbMovieList")
	public String mbMovieList(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = null;
		String form = request.getParameter("form");
		Movie movie = new Movie();
		movie.setForm(form);
		movie.setType("%%");
		movie.setTag("%%");
		if(request.getParameter("type") != null) {
			String query = request.getParameter("type");
			movie.setType(query);
		}else if(request.getParameter("tag") != null) {
			String query = request.getParameter("tag");
			movie.setTag(query);
		}
		movieList = MovieDao.getListByTagTypeForm(movie);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbMovie-list";
	}
	
	@RequestMapping("/mbComment")
	public String mbComment(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getMovieList();
		List<Comment> commentList = CommentDao.getCommentList();
		request.setAttribute("movieList", movieList);
		request.setAttribute("commentList", commentList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbComment";
	}
	
	@RequestMapping("/mbWriteComment")
	public String mbWriteComment(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		long movieId = Long.valueOf(request.getParameter("movieId"));
		long userId = Long.valueOf(request.getParameter("userId"));
		Comment comment = new Comment();
		comment.setMovieId(movieId);
		comment.setUserId(userId);
		comment.setTitle(title);
		comment.setContent(content);
		CommentDao.insertComment(comment);
		return "redirect:/mbDetail?id="+movieId;
	}
	
	@RequestMapping("/mbRank")
	public String mbRank(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> movieList = MovieDao.getMovieList();
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbRank";
	}
	
	@RequestMapping("/mbRankList")
	public String mbRankList(Model model, HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		List<Movie> movieList = MovieDao.getMovieByType(type);
		request.setAttribute("movieList", movieList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbRank-list";
	}
	
	@RequestMapping("/mbTicket")
	public String mbTicket(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		List<Movie> upcomingList = MovieDao.getMovieByTag("%即将上映%");
		List<Movie> nowList = MovieDao.getMovieByTag("%正在上映%");
		request.setAttribute("upcomingList", upcomingList);
		request.setAttribute("nowList", nowList);
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
		}
		return "mbTicket";
	}
	
	@RequestMapping("/mbLogin")
	public String mbLogin(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		return "mbLogin";
	}
	
	@RequestMapping("/mbUser")
	public String mbUser(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		if(request.getSession().getAttribute("userId") != null) {
			Long userId = (long) request.getSession().getAttribute("userId");
			User user = UserDao.getUserById(userId);
			request.setAttribute("user", user);
			return "mbUser";
		}
		return "redirect:/mbLogin";
	}
	
	@RequestMapping("/mbLoginOK")
	public String mbLoginOK(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		if (UserDao.getUserByEmail(email) != null) {
			User user = UserDao.getUserByEmail(email);
			System.out.println("email:" + user.getEmail());
			System.out.println("pwd:" + user.getPwd());
			if (user.getPwd().equals(pwd)) {
				System.out.println("密码正确");
				request.getSession().setAttribute("userId", user.getId());
				if(email.equals("admin")) {
					return "redirect:/ht";
				}
				return "redirect:/mbHome";
			} else {
				System.out.println("密码错误");
			}
		}
		return "mbLogin";
	}
}

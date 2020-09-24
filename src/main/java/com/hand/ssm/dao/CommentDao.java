package com.hand.ssm.dao;

import java.util.List;
import com.hand.ssm.dto.Comment;

public interface CommentDao {
	
	Comment getCommentById(long id);
	List<Comment> getCommentList();
	List<Comment> getCommentListByMId(long id);
	List<Comment> getCommentListByUId(long id);
	void insertComment(Comment comment);
	void delCommentById(long id);
}
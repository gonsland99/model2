package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardBean;

public class BoardReplyProService {

	public boolean replyArticle(BoardBean article) throws Exception {
		boolean isReplySuccess = false;
		int insertCount = 0;
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnetion(conn);
		insertCount = boardDAO.insertReplyArticle(article);
		
		if(insertCount > 0) {
			commit(conn);
			isReplySuccess = true;
		} else {
			rollback(conn);
		}
		close(conn);
		
		return isReplySuccess;
	}

}

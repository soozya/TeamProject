package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.QNAboardDAO;
import model.QNAboardDTO;

//요청을 받아서 처리해주는 클래스(액션 클래스) -> 실행결과 -> 컨트롤러 -> jsp
public class QNAContentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		//1.content.jsp에서 처리한 자바코드
		  int post_num=Integer.parseInt(request.getParameter("post_num"));
		  String pageNum=request.getParameter("pageNum");
		  System.out.println("ContentAction의 pageNum="+pageNum+", post_num="+post_num);

		  QNAboardDAO dbPro=new QNAboardDAO();
		  QNAboardDTO article=dbPro.getArticle(post_num); //조회수 증가

		  //2. 처리한 결과를 서버의 메모리에 저장(request)-> jsp에서${키명}
		  request.setAttribute("post_num", post_num); //${num}을 주기 위해 key, value 똑같이
		  request.setAttribute("pageNum", pageNum); // ${pageNum}
		  request.setAttribute("article",article);

		  return "/QNApostview.jsp";
  	}
}

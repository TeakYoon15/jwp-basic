package next.web.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import core.mvc.AbstractController;
import core.mvc.ModelAndView;
import next.dao.QuestionDao;
import next.model.Question;

public class SaveController extends AbstractController {
    private QuestionDao questionDao = new QuestionDao();
    
    @Override
    public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    		Question question = new Question(
	                request.getParameter("writer"),
	                request.getParameter("title"),
	                request.getParameter("contents"));
	    	questionDao.insert(question);
	        return jstlView("redirect:/qna/list.next");      
    			    	
        }
        
    }

#### 1. Tomcat 서버를 시작할 때 웹 애플리케이션이 초기화하는 과정을 설명하라.
* 


작성 중


#### 2. Tomcat 서버를 시작한 후 http://localhost:8080으로 접근시 호출 순서 및 흐름을 설명하라.
* 

1. core.mvc/DispatcherServlet.java 에서 사용자의 요청한 주소를 받는다. 

```

	String requestUri = req.qetRequestURI();
```  


2. controller.execute를 통해 View.java에서 요청에 따른 결과를 보여준다.(질문 리스트) 

			mav = controller.execute(req, resp);
			View view = mav.getView();
			view.render(mav.getModel(), req, resp);


	1. Controller findController을 이용해 주소를 찾는다.  


	2. core.mvc/RequestMapping.java 에서 mapping 돼있는 요청한 주소를 응답한다.
	
		* 디폴트로 오면 (localhost:8080) /qna/list.next로 이동하게 된다.
		* /qna/list.next는 next.web.qna/ListController.java를 실행시킨다.

			```			
				mappings.put("/qna/list.next", new ListController());
			
			```
			
			
	3. ListController에서 QeustionDao.java에 있는 질문 목록을 찾는다.
			
			```
					questions = questionDao.findAll();
					
					ModelAndView mav = jstlView("/qna/list.jsp");
					mav.addObject("questions", questions);
			```






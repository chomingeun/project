package config;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//필터 : 요청에 앞서 처리되는 코드 정의
// 로깅(log)자료를 남기기 위해 사용, 해킹, 접속정보, 자료수정정보 등
// url pattern : /* 모든요청
// 주의: *.* =>error, /*.do => *.do
@WebFilter("/*")
public class EncodingFilter implements Filter {
	private String charset="utf-8";

	//필터 제거(서버가 멈출 때)
	public void destroy() {
		System.out.println("필터가 제거되었습니다.");
	}

    //요청이 들어올 때 거쳐가는 코드
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("필터가 실행되었습니다.");
		request.setCharacterEncoding(charset);
		// pass the request along the filter chain (여기서 전달)
		chain.doFilter(request, response);
	}

    //필터 초기화(서버가 시작될 때 실행됨)
	public void init(FilterConfig fConfig) throws ServletException {
         System.out.println("필터가 초기화 되었습니다.");
	}

}

package guestbook.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import guestbook.dto.GuestBookDTO;
import sqlmap.MybatisManager;

public class GuestBookDAO {
	//방명록 목록을 리턴, ArrayList를 쓰면 에러난다. List로 쓸것
	public List<GuestBookDTO> getList(String searchkey, String search){
		//mybatis 실행 객체
		SqlSession session=
				MybatisManager.getInstance().openSession();
		List<GuestBookDTO> list=null;
		if(searchkey.equals("name_content")) {//이름+내용
			list=session.selectList("gbListAll", "%"+search+"%");
		}else {
			//mybatis의 method는 2개 이상의 parameter를 전달할 수 없음
			//따라서 dto객체나 HashMap등으로 값을 묶어서 보내야함.
			Map<String,String> map=new HashMap<>();
			map.put("searchkey", searchkey);
			map.put("search", "%"+search+"%");
			list=session.selectList("gbList", map);
		}
		//줄바꿈 및 특수문자 처리기능 추가
		for(GuestBookDTO dto : list) {
			String content=dto.getContent();
			content=content.replace("<", "&lt;");
			content=content.replace(">", "&gt;");
			//줄바꿈처리
			content=content.replace("\n", "<br>");
			//공백 2문자처리
			content=content.replace("  ", "&nbsp;&nbsp;");
			
			//키워드 색상 처리
			if(!searchkey.equals("name")) {//이름으로만 검색시 제외
				content=content.replace(
					search, "<span style='color:red'>"+search+"</span>");
			}
			dto.setContent(content);
		}
		session.close(); //mybatis 세션 닫기
		return list;
	}

	public void gbInsert(GuestBookDTO dto) {
		SqlSession session=
				MybatisManager.getInstance().openSession();
		session.insert("gbInsert", dto);
		session.commit();
		session.close();
	}

	public boolean passwdCheck(int idx, String passwd) {
		boolean result=false;
		//mybatis 실행객체
		SqlSession session=
				MybatisManager.getInstance().openSession();
		GuestBookDTO dto=new GuestBookDTO();
		dto.setIdx(idx);
		dto.setPasswd(passwd);
		//레코드가 1개가 리턴될 경우 selectOne
		int count=session.selectOne("passwdCheck", dto);
		session.close();
		if(count==1) {
			result=true;
		}
		return result;
	}//end passwdCheck()
	
	//게시물의 상세정보(idx: 게시물번호)
	public GuestBookDTO gbDetail(int idx) {
		GuestBookDTO dto=new GuestBookDTO();
		SqlSession session=
				MybatisManager.getInstance().openSession();
		dto = session.selectOne("gbDetail", idx);
		session.close();
		return dto;
	}

	public void gbUpdate(GuestBookDTO dto) {
		SqlSession session=
				MybatisManager.getInstance().openSession();
		//"네임스페이스.id"
		session.update("guestbook.gbUpdate", dto);
		session.commit();
		session.close();
	}

	public void gbDelete(int idx) {
		SqlSession session=
				MybatisManager.getInstance().openSession();
		//"네임스페이스.id"
		session.delete("guestbook.gbDelete", idx);
		session.commit();
		session.close();

		
	}
}



package memo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import memo.dto.MemoDTO;
import sqlmap.MybatisManager;

public class MemoDAO {
	//여기서는 ArrayList를 쓰면 에러가 난다.(mybatis 시스템상 타입을
	//고정시켜 놨다.
	public List<MemoDTO> listMemo(String searchkey, String search){
		//mybatis 실행 객체 생성
		//MybatisManager.getInstance() => SqlSessionFactory
		//openSession()은 SqlSession객체를 가리킨다.
		//SqlSession은 기존에 했던 Connection, PreparedStatement,
		//ResultSet 모두를 가지고 있다.
		//여기서 SqlSession하나를 쓰는건 context.xml에서 maxTotal="50"
		//설정중 1개의 리소스를 이미 써버리는 것이다.
		SqlSession session=MybatisManager.getInstance().openSession();
		//memo.xml에 저장될 sql문장을 실행
		//namespace.id ex)여기서는 네임스페이스는 memo이다.
		List<MemoDTO> list=null;
		try {
			if(searchkey.equals("writer_memo")) {//이름+메모로 검색
				list=session.selectList("memo.listAll",search);
			}else {
				Map<String,String> map=new HashMap<>();
				map.put("searchkey", searchkey);
				map.put("search", search);
				//입력매개변수는 1개만 전달할 수 있음
				//(searchkey,search) 두개를 쓸 수 없다.
				list=session.selectList("memo.list",map);
				for(MemoDTO dto : list) {
					String memo=dto.getMemo();
					//공백문자처리
					memo=memo.replace("  ", "&nbsp;&nbsp;");//insert때보다
					//select때 처리가 더 좋다.
					//태그문자 처리
					memo=memo.replace("<", "&lt;");
					memo=memo.replace(">", "&gt;");
					//키워드에 색상 처리
					if(searchkey.equals("memo")) {
						if(memo.indexOf(search) != -1) {
							memo=memo.replace(search, 
									"<font color='red'>"+search+"</font>");
						}
					}
					dto.setMemo(memo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();//mybatis 객체 닫기
		}
		return list;
		
	}

	public void insertMemo(MemoDTO dto) {
		//mybatis 실행 객체 생성
		SqlSession session=MybatisManager.getInstance().openSession();
		//이름입력영역도 추가처리
		/*
		 * String writer=dto.getWriter(); //공백 문자 처리(스페이스 2개를 변환)
		 * writer=writer.replace("  ", "&nbsp;&nbsp;"); //메모입력영역 처리 String
		 * memo=dto.getMemo(); //공백 문자 처리 memo=memo.replace("  ", "&nbsp;&nbsp;");
		 * 
		 * //태그문자 처리 //String memo=dto.getMemo(); memo=memo.replace("<", "&lt;");//Less
		 * Than ~보다 작다 memo=memo.replace(">", "&gt;");//Greater than dto.setMemo(memo);
		 */
		
		session.insert("memo.insert", dto);//레코드 추가, insert메소드는
		//파라미터가 1개밖에 허용안된다.
		session.commit();//수동 커밋, mybatis는 자동커밋을 막았다.
		session.close();//mybatis 세션닫기
	}//insertMemo
	
	public MemoDTO viewMemo(int idx) {
		SqlSession session=MybatisManager.getInstance().openSession();
		MemoDTO dto=session.selectOne("memo.view", idx);
		//selectOne() 레코드 1개만 가져올때
		//selectList() 레코드 2개 이상 가져올때(목록을 가져올때)
		session.close();
		return dto;
	}

	public void updateMemo(MemoDTO dto) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.update("memo.update", dto);
		session.commit();//select가 아닌경우는 수동커밋
		session.close();
	}//updateMemo

	public void deleteMemo(int idx) {
		SqlSession session=MybatisManager.getInstance().openSession();
		session.delete("memo.delete", idx);
		session.commit();
		session.close();
	}//deleteMemo

}

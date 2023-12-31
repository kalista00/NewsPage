package news;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import server.OracleServer;

public class RatingDAO extends OracleServer {
	
	private static RatingDAO instance = new RatingDAO();
	public static RatingDAO getInstance() {return instance;}
	private RatingDAO() {}
	
	public int goodinsert(String id , int num , RatingDTO dto) throws Exception{	//좋아요를 눌렀을때 동작하는 메소드
		String dbid = "";
		int x = 0;
		int result = -1;
		try {
			conn = getConnection();					
			sql = "select * from rating where num = ? and id=?";				//넘겨받은 글번호와 id를 넣고 테이블에 저장된 값을 검색
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			
			// "test"
			if(rs.next()) {  
				dbid = rs.getString("id");     // 2
				x = rs.getInt("bad"); // 0
			}
			if(dbid.equals(id) && x != 0) {			//해당 글번호에 있는 것들 검색하고 세션에서 받아온 값고 테이블에서 검색한 값을 비교하고 테이블에서 가지고 온 싫어요를 비교 후 싫어요를 누른 상태에서 좋아요를 눌렀을때 동작
				sql = "update rating set good = ?, bad = ?,total = ? where num = ? and id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, dto.getGood()+1);
				pstmt.setInt(2, dto.getBad()+0);
				pstmt.setInt(3, dto.getTotal());
				pstmt.setInt(4, num);
				pstmt.setString(5, id);
				pstmt.executeUpdate();
				
			}else if(dbid.equals(id)) {				//세션에서 받아온 id와 평점 테이블을 검색해서 같은 id가 있는지 확인하고 있다면 삭제
				sql = "delete from rating where id = ? and num = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setInt(2, num);
				pstmt.executeUpdate();
				result = 0;
				
			}else{						//만약 검색값이 없다면 테이블에 저장
				sql = "insert into rating values(?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.setString(2, id);
				pstmt.setInt(3, dto.getGood()+1);
				pstmt.setInt(4, dto.getBad());
				pstmt.setInt(5, dto.getTotal()+1);
				pstmt.executeUpdate();
				result = 1;
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			oracleClose();
		}
	return result;
	}
	
	public int badinsert(String id, int num, RatingDTO rDTO) throws Exception{
		String dbid = "";
		int x = 0;
		int result = -1;
		
		try {
			conn = getConnection();
			sql = "select * from rating where num = ? and id = ?";		//해당 글번호의 저장된 값을 꺼냄
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
				
			if(rs.next()) {
				dbid = rs.getString("id");					//꺼내온 값을 대입
				x = rs.getInt("good");						//꺼내온 값을 대입
			}
			
			if(dbid.equals(id) && x != 0) {					//검색한 글번호에 해당 아이디가 있어야되고 해당 아이디가 좋아요를 누른게 있다면 동작 
				sql = "update rating set good = ?,bad = ?,total = ? where num = ? and id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rDTO.getGood()+0);
				pstmt.setInt(2, rDTO.getBad()+1);
				pstmt.setInt(3, rDTO.getTotal());
				pstmt.setInt(4, num);
				pstmt.setString(5, id);
				pstmt.executeUpdate();
				
			}else if(dbid.equals(id)) {						//세션에서 받아온 id와 평점 테이블을 검색해서 같은 id가 있는지 확인하고 있다면 삭제
				sql = "delete from rating where id = ? and num = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setInt(2, num);
				pstmt.executeUpdate();
				result = 0;
				
			}else{											//만약 검색값이 없다면 테이블에 저장
				sql = "insert into rating values(?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.setString(2, id);
				pstmt.setInt(3, rDTO.getGood());
				pstmt.setInt(4, rDTO.getBad()+1);
				pstmt.setInt(5, rDTO.getTotal()-1);
				pstmt.executeUpdate();
				result = 1;
				}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			oracleClose();
		}
		return result;
	}
	
	public RatingDTO getRatingDTO(int num) throws Exception{				//해당 글번호에 좋아요,싫어요,총점을 더해서 검색
		RatingDTO rdto = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select sum(good),sum(bad),sum(total) from rating where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				rdto = new RatingDTO();
				rdto.setGood(rs.getInt("sum(good)"));
				rdto.setBad(rs.getInt("sum(bad)"));
				rdto.setTotal(rs.getInt("sum(total)"));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			oracleClose();
		}
		return rdto;
	}
}

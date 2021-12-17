package net.sungjuk;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import net.utility.DBClose;
import net.utility.DBOpen;

public class SungjukDAO {
	
	DBOpen dbopen = null; //데이터베이스 연결 처리
	DBClose dbclose = null; //데이터베이스 자원 반납 처리
	
	public SungjukDAO() {
		dbopen = new DBOpen();
		dbclose = new DBClose();
	}
	
	//행추가
	public int insert(SungjukDTO dto) {
		Connection con=null;
		PreparedStatement pstmt = null;
		StringBuffer sql = null;
		int res=0;
		try {
			con=dbopen.getConnection(); //DB 연결
			sql = new StringBuffer();
			sql.append(" insert into sungjuk(sno, uname, kor, eng, mat, aver, addr, wdate)");
			sql.append("values(sungjuk_seq.nextval,?,?,?,?,?,?,sysdate)");
			
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUname());
			pstmt.setInt(2, dto.getKor());
			pstmt.setInt(3, dto.getEng());
			pstmt.setInt(4, dto.getMat());
			pstmt.setInt(5, dto.getAver());
			pstmt.setString(6, dto.getAddr());
			
			res = pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			dbclose.close(con, pstmt);
		}
		return res;
	}
	
	//목록
	public ArrayList<SungjukDTO> list(){
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = null;
		ResultSet rs = null;
		ArrayList<SungjukDTO> list = null;
		SungjukDTO dto = null;
		int res=0;
		try {
			con = dbopen.getConnection();
			sql = new StringBuffer();
			sql.append("select sno,uname,kor,eng,mat,wdate");
			sql.append(" from sungjuk");
			sql.append(" order by wdate desc");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				do {
					dto = new SungjukDTO();
					dto.setSno(rs.getInt("sno"));
					dto.setUname(rs.getString("uname"));
					dto.setKor(rs.getInt("kor"));
					dto.setEng(rs.getInt("eng"));
					dto.setMat(rs.getInt("mat"));
					dto.setWdate(rs.getString("wdate"));
					list.add(dto);
				}while(rs.next());
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose.close(con,pstmt,rs);
		}
		return list;
	}//end
	
	//상세보기
	public SungjukDTO read(int sno) {
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuffer sql = null;
		ResultSet rs = null;
		SungjukDTO dto = null;
		try {
			con=dbopen.getConnection();
			sql=new StringBuffer();
			sql.append("select sno,uname,kor,eng,mat,aver,addr,wdate");
			sql.append(" from sungjuk");
			sql.append(" where sno=?");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1,sno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new SungjukDTO();
				dto.setUname(rs.getString("uname"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMat(rs.getInt("mat"));
				dto.setAver(rs.getInt("aver"));
				dto.setAddr(rs.getString("addr"));
				dto.setWdate(rs.getString("wdate"));
			}
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			dbclose.close(con,pstmt,rs);
		}
		return dto;
	
}//end

//행삭제
public int delete(int sno) {
	Connection con = null;
	PreparedStatement pstmt = null;
	StringBuffer sql = null;
	int res=0;
	try {
		con = dbopen.getConnection();
		sql=new StringBuffer();
		sql.append("delete from subjuk");
		sql.append(" where sno=?");
		pstmt=con.prepareStatement(sql.toString());
		pstmt.setInt(1, sno);
		res=pstmt.executeUpdate();
	}catch(Exception e) {
		System.out.println(e);
	}finally {
		dbclose.close(con,pstmt);
	}
	return res;
}//end

//행수정
public int updateproc(SungjukDTO dto) {
	Connection con = null;
	PreparedStatement pstmt=null;
	StringBuffer sql=null;
	int res=0;
	try {
		con=dbopen.getConnection(); //DB연결
		sql=new StringBuffer();
		sql.append("update sungjuk");
		sql.append(" set uname=?, kor=?, eng=?, mat=?, aver=?, addr=?");
		sql.append(" where sno=?");
		pstmt = con.prepareStatement(sql.toString());
		pstmt.setString(1, dto.getUname());
		pstmt.setInt(2, dto.getKor());
		pstmt.setInt(3, dto.getEng());
		pstmt.setInt(4, dto.getMat());
		pstmt.setInt(5, dto.getAver());
		pstmt.setString(6,dto.getAddr());
		pstmt.setInt(7, dto.getSno());
		res= pstmt.executeUpdate();
	}catch(Exception e) {
		System.out.println(e);
	}finally {
		dbclose.close(con,pstmt);
	}
	return res;
}
}
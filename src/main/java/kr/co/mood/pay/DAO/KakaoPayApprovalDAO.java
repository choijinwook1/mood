package kr.co.mood.pay.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mood.Payment.VO.KakaoPayApprovalVO;
import kr.co.mood.module.ModuleVO;

@Repository
public class KakaoPayApprovalDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public void paymentinsert(KakaoPayApprovalVO kvo) {
		sql.insert("KakaoPayApprovalDAO.insert", kvo);
	}
	

	
	public void paysuccessdelete(String userno) {
		sql.delete("KakaoPayApprovalDAO.catedelete" , userno);
	}
	
	public void paysuccessupdate(String pro_no) {
		sql.update("KakaoPayApprovalDAO.paycountupdate" , pro_no);
	}
	public List<KakaoPayApprovalVO>selectlist(int userno) {
		return sql.selectList("KakaoPayApprovalDAO.selectlist", userno);
	}
	public List<KakaoPayApprovalVO>selectorderid(int userno) {
		return sql.selectList("KakaoPayApprovalDAO.selectorderid", userno);
	}
	
	public List<KakaoPayApprovalVO>pageselectorderid(ModuleVO moduleVO) {
		return sql.selectList("KakaoPayApprovalDAO.pageselectorderid", moduleVO);
	}

	public int getTotalRecords(int userno) {
	    return sql.selectOne("KakaoPayApprovalDAO.totalRecords", userno);
	}
	
	
	public List<KakaoPayApprovalVO>selectsuccesslist(int orderid) {
		return sql.selectList("KakaoPayApprovalDAO.selectsuccesslist", orderid);
	}

	public void paycancelDelete(int orderId) {
		sql.delete("KakaoPayApprovalDAO.cancelDelete" , orderId);
	}
	public void paySuccessStatusUpdate(int orderId) {
		sql.update("KakaoPayApprovalDAO.successUpdate" , orderId);
	}
}

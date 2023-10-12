package kr.co.mood.pay.DAO;

import java.util.List;

import kr.co.mood.Payment.VO.KakaoPayApprovalVO;
import kr.co.mood.module.ModuleVO;

public interface KakaoPayApprovalService {
	
	public void paymentinsert(KakaoPayApprovalVO kvo);


	public void paysuccessdelete(String userno);
	
	public void paysuccessupdate(String pro_no);
	
	public List<KakaoPayApprovalVO>selectlist(int userno);
	
	public List<KakaoPayApprovalVO>selectorderid(int userno);
	
	public List<KakaoPayApprovalVO>pageselectorderid(ModuleVO moduleVO);
	
	public int getTotalRecords(int userno);
	
	public List<KakaoPayApprovalVO>selectsuccesslist(int orderid);
	
	public void paycancelDelete(int orderId);
	
	public void paySuccessStatusUpdate(int orderId);
}

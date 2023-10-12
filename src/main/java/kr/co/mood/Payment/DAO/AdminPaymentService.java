package kr.co.mood.Payment.DAO;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.mood.Payment.VO.AdminChartVO;
import kr.co.mood.Payment.VO.AdminPaymentVO;
import kr.co.mood.Payment.VO.KakaoPayApprovalVO;
import kr.co.mood.cate.vo.CateVO;
import kr.co.mood.module.ModuleCommon;
import kr.co.mood.module.ModuleVO;
import kr.co.mood.module.ViewPagingVO;

@Service
public class AdminPaymentService {
	@Autowired
	AdminPaymentDAO dao;
	@Autowired
	ModuleCommon module;
	
	public void getCategoryChart(Model model) {
		
		String year =LocalDate.now().toString().split("-")[0];
		List<AdminChartVO> chart1 = dao.getCategoryChart1();
		List<AdminChartVO> chart2 = dao.getCategoryChart2();
		List<AdminChartVO> chart3 = dao.getCategoryChart3(year);
		List<AdminChartVO> chart4 = dao.getCategoryChart4(year);
		List<AdminChartVO> chart5 = dao.getCategoryChart5(year);
		
		List<String> categorys = new ArrayList<String>();
		List<String> ages = new ArrayList<String>();
		List<AdminChartVO> woman = new ArrayList<AdminChartVO>();
		List<AdminChartVO> man = new ArrayList<AdminChartVO>();
		
		boolean categoryFlag;
		boolean ageFlag;
		
		for(AdminChartVO vo : chart4) {
			
			if(vo.getCategorySerial().equals("A0")) {
				vo.setCategorySerial("매트리스");
			}else if(vo.getCategorySerial().equals("A1")) {
				vo.setCategorySerial("침대프레임");
			}else if(vo.getCategorySerial().equals("A2")) {
				vo.setCategorySerial("소파");
			}else if(vo.getCategorySerial().equals("B0")) {
				vo.setCategorySerial("무드등");
			}else if(vo.getCategorySerial().equals("B1")) {
				vo.setCategorySerial("스탠스");
			}else if(vo.getCategorySerial().equals("C0")) {
				vo.setCategorySerial("옷장/행거");
			}else if(vo.getCategorySerial().equals("C1")) {
				vo.setCategorySerial("서랍");
			}else if(vo.getCategorySerial().equals("D0")) {
				vo.setCategorySerial("시공/침실");
			}else if(vo.getCategorySerial().equals("D1")) {
				vo.setCategorySerial("시공/거실");
			}else if(vo.getCategorySerial().equals("D2")) {
				vo.setCategorySerial("시공/주방");
			}else if(vo.getCategorySerial().equals("D3")) {
				vo.setCategorySerial("시공/욕실");
			}			
			
			categoryFlag = true;
			ageFlag = true;
			for(String category : categorys) {				
				if(vo.getCategorySerial().equals(category)) {
					categoryFlag = false;
				}		
			}
			if(categoryFlag) {
				categorys.add(vo.getCategorySerial());
			}			
		
			for(String age: ages) {

				if(vo.getAge()== null || vo.getAge().equals(age) || vo.getAge().trim().equals("")) {
					ageFlag = false;
				}
			}			
			if(ageFlag) {
				ages.add(vo.getAge());
			}

			if(vo.getAge() != null && vo.getGender() != null) {
				if(!vo.getAge().trim().equals("") && !vo.getGender().trim().equals("")) {
					if(vo.getGender().equals("F")) {
						woman.add(vo);
					}else if(vo.getGender().equals("M")) {
						man.add(vo);
					}

				}
			}
		}	
		Collections.sort(ages, Collections.reverseOrder());
		
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			model.addAttribute("chart4Woman", objectMapper.writeValueAsString(woman));
			model.addAttribute("chart4Man", objectMapper.writeValueAsString(man));
			model.addAttribute("chart4Age", objectMapper.writeValueAsString(ages));
			model.addAttribute("chart4Category", objectMapper.writeValueAsString(categorys));
			model.addAttribute("chart5", objectMapper.writeValueAsString(chart5));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("chart1", chart1);
		model.addAttribute("chart2", chart2);
		model.addAttribute("chart3", chart3);
		
		
	}
	
	public void adminPaymentList(Model model, String num) {
		List<AdminPaymentVO> allMemberList = dao.adminPaymentMemberList(0,0);
		int[] no = module.pagingModuleToAdminPayment(model, allMemberList, num, 10);
		List<AdminPaymentVO> showMemberList = dao.adminPaymentMemberList(no[0], no[1]);
		List<AdminPaymentVO> payList = dao.adminPaymentList();
		Map<Integer, List<AdminPaymentVO>> map = new HashMap<Integer, List<AdminPaymentVO>>();
		for(AdminPaymentVO memberVO : showMemberList) {
			List<AdminPaymentVO> list = new ArrayList<AdminPaymentVO>();
			for(AdminPaymentVO payVO : payList) {
				if(memberVO.getOrderNo() == payVO.getOrderNo()) {
					list.add(payVO);
				}
			}
			map.put(memberVO.getOrderNo(), list);
		}
		model.addAttribute("member", showMemberList);
		model.addAttribute("map", map);
	
		}
	
	public void adminPaymentSearchingList(Model model, String paging, String searchWhat, String search) {
		   ModuleVO moduleVO = new ModuleVO();
		  
		  
			   if(searchWhat.equals("name")) {
				   moduleVO.setSearchName(search);
			   }else if(searchWhat.equals("orderNo")) {
				   try {
					   moduleVO.setOrderNo(Integer.parseInt(search));
				   }catch(Exception e) {
					   moduleVO.setOrderNo(-1);
				   }
			   }else if(searchWhat.equals("payDate")) {
				   moduleVO.setDate(search);
			   }else if(searchWhat.equals("phone")) {
				   moduleVO.setPhone(search);
			   }
			   
		   
		   List<AdminPaymentVO> memberSearchingAllList = dao.adminPaymentSearchingList(moduleVO);
		   module.pagingModule(model, moduleVO, memberSearchingAllList, paging, 10);
		   List<AdminPaymentVO> memberSearchingShowList = dao.adminPaymentSearchingList(moduleVO);
		   List<AdminPaymentVO> productList = dao.adminPaymentList();
		   
		   Map<Integer, List<AdminPaymentVO>> map = new HashMap<Integer, List<AdminPaymentVO>>();
			for(AdminPaymentVO memberVO : memberSearchingShowList) {
				List<AdminPaymentVO> list = new ArrayList<AdminPaymentVO>();
				for(AdminPaymentVO payVO : productList) {
					if(memberVO.getOrderNo() == payVO.getOrderNo()) {
						list.add(payVO);
					}
				}
				map.put(memberVO.getOrderNo(), list);
			}
		   
			model.addAttribute("searchWhat", searchWhat);
			model.addAttribute("search", search);
			model.addAttribute("member", memberSearchingShowList);
			model.addAttribute("map", map);
	}
	
	public void adminPaymentDetail(Model model, int no) {
		List<AdminPaymentVO> list= dao.adminPaymentDetail(no);
		AdminPaymentVO member = new AdminPaymentVO();
		member.setAddress(list.get(0).getAddress());
		member.setName(list.get(0).getName());
		member.setAmount(list.get(0).getAmount());
		member.setOrderNo(list.get(0).getOrderNo());
		member.setPayDate(list.get(0).getPayDate());
		member.setPhone(list.get(0).getPhone());
		member.setStatus(list.get(0).getStatus());
		System.out.println(member.getStatus());
		model.addAttribute("member", member);
		model.addAttribute("product", list);
	}
	
	public KakaoPayApprovalVO adminPaymentCancel(int orderid) {
		return dao.adminPaymentCancel(orderid);
	}
	
	public void updateAddress(AdminPaymentVO vo) {
		dao.updateAddress(vo);
	}
	
	public void insert(int user_no, CateVO vo) {
		dao.insert(user_no, vo);
	}
	
	
	
}

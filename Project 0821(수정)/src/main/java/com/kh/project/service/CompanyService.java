//package com.kh.project.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//
//import com.kh.project.model.vo.Company;
//import com.kh.project.model.vo.Member;
//
//import mapper.CompanyMapper;
//import mapper.MemberMapper;
//
//@Service
//public class CompanyService implements UserDetailsService {
//
//    @Autowired
//    private CompanyMapper companyMapper;
//    
//    
//    @Autowired
//	private PasswordEncoder bcpe;
//   
//    public boolean check(String Comid) {
//        Company vo = companyMapper.check(Comid);
//        return vo != null; // ID가 이미 존재하면 true
//    }
//    
//    public Company Comlogin(Company vo) {
//        return companyMapper.Comlogin(vo);
//    }
//
//    public boolean ComsignUp(ComMember vo) {
//        try {
//        	vo.setPassword(bcpe.encode(vo.getPassword()));
//            int result = companyMapper.signUp(vo);
//            return result == 1; // 삽입된 레코드 수가 1이면 성공
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//    
//    // 회원정보 수정(아이디)
//    public boolean Comupdate(Company vo) {
//        try {
//            int result = companyMapper.update(vo);
//            return result > 0;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//    
//    
//    public void delete(int no) {
//    	companyMapper.delete(no);
//    }
//
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		return companyMapper.check(username);
//	}
//    
//}
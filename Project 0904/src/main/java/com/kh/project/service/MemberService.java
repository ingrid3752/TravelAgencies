package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Member;
import mapper.MemberMapper;

@Service
public class MemberService implements UserDetailsService {

    @Autowired
    private MemberMapper memberMapper;
    
    
    @Autowired
	private PasswordEncoder bcpe;
   
    public boolean check(String id) {
        Member vo = memberMapper.check(id);
        return vo != null; // ID가 이미 존재하면 true
    }
    
    public Member login(Member vo) {
        return memberMapper.login(vo);
    }

    public boolean signUp(Member vo) {
        try {
        	vo.setPassword(bcpe.encode(vo.getPassword()));
            int result = memberMapper.signUp(vo);
            return result == 1; // 삽입된 레코드 수가 1이면 성공
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    // 회원정보 수정 비밀번호(아이디)
    public boolean update(Member vo) {
        try {
            int result = memberMapper.updateId(vo);
            return result > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    //회원정보 수정 이름,이메일,번호(아이디)
    public boolean updateNPE(Member vo) {
    try {	
    	int result =memberMapper.updateNPE(vo);
    	return result > 0;
    } catch (Exception e) {
    	e.printStackTrace();
		return false;
       }
    }
    
    
    public void delete(int no) {
    	memberMapper.delete(no);
    }
   
    
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return memberMapper.check(username);
	}
}
	 
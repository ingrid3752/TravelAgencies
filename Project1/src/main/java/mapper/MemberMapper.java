package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Member;

@Mapper
public interface MemberMapper {
	
	Member check(String id);
    Member login(Member vo);
    int signUp(Member vo);
    int updateId(Member vo);
    int updateNPE(Member vo);
    
}

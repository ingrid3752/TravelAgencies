package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Member;

@Mapper
public interface MemberMapper {
    
   void signUp(Member vo);
   Member login(String id);
}

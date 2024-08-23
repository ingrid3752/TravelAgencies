package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Company;

@Mapper
public interface CompanyMapper {

	Company check(String Comid);
	Company login(Company vo);
	int signUp(Company vo);
	int update(Company vo);
	void delete(int no);
	
}

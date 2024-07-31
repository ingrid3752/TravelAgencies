package mapper;

import org.apache.ibatis.annotations.Mapper;
import com.kh.project.model.vo.Mem_info;

@Mapper
public interface Mem_info_Mapper {
	void register(Mem_info member);
}

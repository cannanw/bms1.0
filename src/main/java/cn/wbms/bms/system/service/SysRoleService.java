package cn.wbms.bms.system.service;

import java.util.List;
import java.util.Map;

import cn.wbms.bms.system.entity.SysRole;


public interface SysRoleService {

	Map<String, Object> findObjects(String name,
                                    Integer pageCurrent);
	void saveObject(SysRole role, String menuIdList);
	Map<String,Object> findMapById(Integer roleId);
	void updateRole(SysRole role, String menuIdList);
	void deleteObject(Integer roleId);
	List<Map<String, Object>> findZtreeNodes();

}

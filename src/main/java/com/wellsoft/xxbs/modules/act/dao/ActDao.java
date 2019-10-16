/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wellsoft.xxbs.modules.act.dao;

import com.wellsoft.xxbs.common.persistence.CrudDao;
import com.wellsoft.xxbs.common.persistence.annotation.MyBatisDao;
import com.wellsoft.xxbs.modules.act.entity.Act;
import com.wellsoft.xxbs.modules.act.entity.Act;

/**
 * 审批DAO接口
 * @author thinkgem
 * @version 2014-05-16
 */
@MyBatisDao
public interface ActDao extends CrudDao<Act> {

	public int updateProcInsIdByBusinessId(Act act);
	
}

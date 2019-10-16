/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wellsoft.xxbs.modules.gen.dao;

import com.wellsoft.xxbs.common.persistence.CrudDao;
import com.wellsoft.xxbs.common.persistence.annotation.MyBatisDao;
import com.wellsoft.xxbs.modules.gen.entity.GenTableColumn;
import com.wellsoft.xxbs.modules.gen.entity.GenTableColumn;

/**
 * 业务表字段DAO接口
 * @author ThinkGem
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTableColumnDao extends CrudDao<GenTableColumn> {
	
	public void deleteByGenTableId(String genTableId);
}

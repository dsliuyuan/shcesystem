/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wellsoft.xxbs.modules.gen.dao;

import com.wellsoft.xxbs.common.persistence.CrudDao;
import com.wellsoft.xxbs.common.persistence.annotation.MyBatisDao;
import com.wellsoft.xxbs.modules.gen.entity.GenTable;
import com.wellsoft.xxbs.modules.gen.entity.GenTable;

/**
 * 业务表DAO接口
 * @author ThinkGem
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTableDao extends CrudDao<GenTable> {
	
}

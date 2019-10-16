/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wellsoft.xxbs.modules.sys.dao;

import com.wellsoft.xxbs.common.persistence.TreeDao;
import com.wellsoft.xxbs.common.persistence.annotation.MyBatisDao;
import com.wellsoft.xxbs.modules.sys.entity.Office;

/**
 * 机构DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {

    Office findByOfficeName(String officeName);

    /*Office findByOfficeId(String officeId);*/
	
}

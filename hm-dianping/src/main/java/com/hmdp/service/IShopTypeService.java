package com.hmdp.service;

import com.hmdp.dto.Result;
import com.hmdp.entity.ShopType;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Moon
 * @since 2026-07-13
 */
public interface IShopTypeService extends IService<ShopType> {

    /**
     * 店铺类型查询业务
     * @return
     */
    Result queryTypeList();
}

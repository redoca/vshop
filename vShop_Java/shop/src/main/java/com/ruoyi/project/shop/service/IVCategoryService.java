package com.ruoyi.project.shop.service;

import java.util.List;
import com.ruoyi.project.shop.domain.VCategory;

/**
 * 商品类目Service接口
 * 
 * @author wanghuan
 * @date 2020-03-30
 */
public interface IVCategoryService 
{
    /**
     * 查询商品类目
     * 
     * @param categoryId 商品类目ID
     * @return 商品类目
     */
    public VCategory selectVCategoryById(Long categoryId);

    /**
     * 查询商品类目列表
     * 
     * @param vCategory 商品类目
     * @return 商品类目集合
     */
    public List<VCategory> selectVCategoryList(VCategory vCategory);

    /**
     * 新增商品类目
     * 
     * @param vCategory 商品类目
     * @return 结果
     */
    public int insertVCategory(VCategory vCategory);

    /**
     * 修改商品类目
     * 
     * @param vCategory 商品类目
     * @return 结果
     */
    public int updateVCategory(VCategory vCategory);

    /**
     * 批量删除商品类目
     * 
     * @param categoryIds 需要删除的商品类目ID
     * @return 结果
     */
    public int deleteVCategoryByIds(Long[] categoryIds);

    /**
     * 删除商品类目信息
     * 
     * @param categoryId 商品类目ID
     * @return 结果
     */
    public int deleteVCategoryById(Long categoryId);
}

package com.ruoyi.project.shop.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shop.mapper.VCategoryMapper;
import com.ruoyi.project.shop.domain.VCategory;
import com.ruoyi.project.shop.service.IVCategoryService;

/**
 * 商品类目Service业务层处理
 * 
 * @author wanghuan
 * @date 2020-03-30
 */
@Service
public class VCategoryServiceImpl implements IVCategoryService 
{
    @Autowired
    private VCategoryMapper vCategoryMapper;

    /**
     * 查询商品类目
     * 
     * @param categoryId 商品类目ID
     * @return 商品类目
     */
    @Override
    public VCategory selectVCategoryById(Long categoryId)
    {
        return vCategoryMapper.selectVCategoryById(categoryId);
    }

    /**
     * 查询商品类目列表
     * 
     * @param vCategory 商品类目
     * @return 商品类目
     */
    @Override
    public List<VCategory> selectVCategoryList(VCategory vCategory)
    {
        return vCategoryMapper.selectVCategoryList(vCategory);
    }

    /**
     * 新增商品类目
     * 
     * @param vCategory 商品类目
     * @return 结果
     */
    @Override
    public int insertVCategory(VCategory vCategory)
    {
        return vCategoryMapper.insertVCategory(vCategory);
    }

    /**
     * 修改商品类目
     * 
     * @param vCategory 商品类目
     * @return 结果
     */
    @Override
    public int updateVCategory(VCategory vCategory)
    {
        return vCategoryMapper.updateVCategory(vCategory);
    }

    /**
     * 批量删除商品类目
     * 
     * @param categoryIds 需要删除的商品类目ID
     * @return 结果
     */
    @Override
    public int deleteVCategoryByIds(Long[] categoryIds)
    {
        return vCategoryMapper.deleteVCategoryByIds(categoryIds);
    }

    /**
     * 删除商品类目信息
     * 
     * @param categoryId 商品类目ID
     * @return 结果
     */
    @Override
    public int deleteVCategoryById(Long categoryId)
    {
        return vCategoryMapper.deleteVCategoryById(categoryId);
    }
}

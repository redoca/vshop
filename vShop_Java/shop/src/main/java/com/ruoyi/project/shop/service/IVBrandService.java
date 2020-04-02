package com.ruoyi.project.shop.service;

import java.util.List;
import com.ruoyi.project.shop.domain.VBrand;

/**
 * 品牌 Service接口
 * 
 * @author wanghuan
 * @date 2020-04-02
 */
public interface IVBrandService 
{
    /**
     * 查询品牌 
     * 
     * @param brandId 品牌 ID
     * @return 品牌 
     */
    public VBrand selectVBrandById(Long brandId);

    /**
     * 查询品牌 列表
     * 
     * @param vBrand 品牌 
     * @return 品牌 集合
     */
    public List<VBrand> selectVBrandList(VBrand vBrand);

    /**
     * 新增品牌 
     * 
     * @param vBrand 品牌 
     * @return 结果
     */
    public int insertVBrand(VBrand vBrand);

    /**
     * 修改品牌 
     * 
     * @param vBrand 品牌 
     * @return 结果
     */
    public int updateVBrand(VBrand vBrand);

    /**
     * 批量删除品牌 
     * 
     * @param brandIds 需要删除的品牌 ID
     * @return 结果
     */
    public int deleteVBrandByIds(Long[] brandIds);

    /**
     * 删除品牌 信息
     * 
     * @param brandId 品牌 ID
     * @return 结果
     */
    public int deleteVBrandById(Long brandId);
}

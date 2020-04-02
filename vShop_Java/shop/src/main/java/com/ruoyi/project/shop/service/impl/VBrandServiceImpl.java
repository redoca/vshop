package com.ruoyi.project.shop.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.shop.mapper.VBrandMapper;
import com.ruoyi.project.shop.domain.VBrand;
import com.ruoyi.project.shop.service.IVBrandService;

/**
 * 品牌 Service业务层处理
 * 
 * @author wanghuan
 * @date 2020-04-02
 */
@Service
public class VBrandServiceImpl implements IVBrandService 
{
    @Autowired
    private VBrandMapper vBrandMapper;

    /**
     * 查询品牌 
     * 
     * @param brandId 品牌 ID
     * @return 品牌 
     */
    @Override
    public VBrand selectVBrandById(Long brandId)
    {
        return vBrandMapper.selectVBrandById(brandId);
    }

    /**
     * 查询品牌 列表
     * 
     * @param vBrand 品牌 
     * @return 品牌 
     */
    @Override
    public List<VBrand> selectVBrandList(VBrand vBrand)
    {
        return vBrandMapper.selectVBrandList(vBrand);
    }

    /**
     * 新增品牌 
     * 
     * @param vBrand 品牌 
     * @return 结果
     */
    @Override
    public int insertVBrand(VBrand vBrand)
    {
        return vBrandMapper.insertVBrand(vBrand);
    }

    /**
     * 修改品牌 
     * 
     * @param vBrand 品牌 
     * @return 结果
     */
    @Override
    public int updateVBrand(VBrand vBrand)
    {
        return vBrandMapper.updateVBrand(vBrand);
    }

    /**
     * 批量删除品牌 
     * 
     * @param brandIds 需要删除的品牌 ID
     * @return 结果
     */
    @Override
    public int deleteVBrandByIds(Long[] brandIds)
    {
        return vBrandMapper.deleteVBrandByIds(brandIds);
    }

    /**
     * 删除品牌 信息
     * 
     * @param brandId 品牌 ID
     * @return 结果
     */
    @Override
    public int deleteVBrandById(Long brandId)
    {
        return vBrandMapper.deleteVBrandById(brandId);
    }
}

package com.ruoyi.project.shop.controller;

import java.util.List;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.shop.domain.VBrand;
import com.ruoyi.project.shop.service.IVBrandService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 品牌 Controller
 * 
 * @author wanghuan
 * @date 2020-04-02
 */
@RestController
@RequestMapping("/shop/brand")
public class VBrandController extends BaseController
{
    @Autowired
    private IVBrandService vBrandService;

    /**
     * 查询品牌 列表
     */
    @PreAuthorize("@ss.hasPermi('shop:brand:list')")
    @GetMapping("/list")
    public TableDataInfo list(VBrand vBrand)
    {
        startPage();
        List<VBrand> list = vBrandService.selectVBrandList(vBrand);
        return getDataTable(list);
    }

    /**
     * 导出品牌 列表
     */
    @PreAuthorize("@ss.hasPermi('shop:brand:export')")
    @Log(title = "品牌 ", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(VBrand vBrand)
    {
        List<VBrand> list = vBrandService.selectVBrandList(vBrand);
        ExcelUtil<VBrand> util = new ExcelUtil<VBrand>(VBrand.class);
        return util.exportExcel(list, "brand");
    }

    /**
     * 获取品牌 详细信息
     */
    @PreAuthorize("@ss.hasPermi('shop:brand:query')")
    @GetMapping(value = "/{brandId}")
    public AjaxResult getInfo(@PathVariable("brandId") Long brandId)
    {
        return AjaxResult.success(vBrandService.selectVBrandById(brandId));
    }

    /**
     * 新增品牌 
     */
    @PreAuthorize("@ss.hasPermi('shop:brand:add')")
    @Log(title = "品牌 ", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VBrand vBrand)
    {
        return toAjax(vBrandService.insertVBrand(vBrand));
    }

    /**
     * 修改品牌 
     */
    @PreAuthorize("@ss.hasPermi('shop:brand:edit')")
    @Log(title = "品牌 ", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VBrand vBrand)
    {
        return toAjax(vBrandService.updateVBrand(vBrand));
    }

    /**
     * 删除品牌 
     */
    @PreAuthorize("@ss.hasPermi('shop:brand:remove')")
    @Log(title = "品牌 ", businessType = BusinessType.DELETE)
	@DeleteMapping("/{brandIds}")
    public AjaxResult remove(@PathVariable Long[] brandIds)
    {
        return toAjax(vBrandService.deleteVBrandByIds(brandIds));
    }
}

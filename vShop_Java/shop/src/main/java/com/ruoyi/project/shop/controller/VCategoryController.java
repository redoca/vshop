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
import com.ruoyi.project.shop.domain.VCategory;
import com.ruoyi.project.shop.service.IVCategoryService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 商品类目Controller
 * 
 * @author wanghuan
 * @date 2020-03-30
 */
@RestController
@RequestMapping("/shop/category")
public class VCategoryController extends BaseController
{
    @Autowired
    private IVCategoryService vCategoryService;

    /**
     * 查询商品类目列表
     */
    @PreAuthorize("@ss.hasPermi('shop:category:list')")
    @GetMapping("/list")
    public AjaxResult list(VCategory vCategory)
    {
        List<VCategory> list = vCategoryService.selectVCategoryList(vCategory);
        return AjaxResult.success(list);
    }

    /**
     * 导出商品类目列表
     */
    @PreAuthorize("@ss.hasPermi('shop:category:export')")
    @Log(title = "商品类目", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(VCategory vCategory)
    {
        List<VCategory> list = vCategoryService.selectVCategoryList(vCategory);
        ExcelUtil<VCategory> util = new ExcelUtil<VCategory>(VCategory.class);
        return util.exportExcel(list, "category");
    }

    /**
     * 获取商品类目详细信息
     */
    @PreAuthorize("@ss.hasPermi('shop:category:query')")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable("categoryId") Long categoryId)
    {
        return AjaxResult.success(vCategoryService.selectVCategoryById(categoryId));
    }

    /**
     * 新增商品类目
     */
    @PreAuthorize("@ss.hasPermi('shop:category:add')")
    @Log(title = "商品类目", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VCategory vCategory)
    {
        return toAjax(vCategoryService.insertVCategory(vCategory));
    }

    /**
     * 修改商品类目
     */
    @PreAuthorize("@ss.hasPermi('shop:category:edit')")
    @Log(title = "商品类目", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VCategory vCategory)
    {
        return toAjax(vCategoryService.updateVCategory(vCategory));
    }

    /**
     * 删除商品类目
     */
    @PreAuthorize("@ss.hasPermi('shop:category:remove')")
    @Log(title = "商品类目", businessType = BusinessType.DELETE)
	@DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable Long[] categoryIds)
    {
        return toAjax(vCategoryService.deleteVCategoryByIds(categoryIds));
    }
}

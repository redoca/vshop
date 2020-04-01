package com.ruoyi.project.shop.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.TreeEntity;

/**
 * 商品类目对象 v_category
 * 
 * @author wanghuan
 * @date 2020-03-30
 */
public class VCategory extends TreeEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品类目ID */
    private Long categoryId;

    /** 类目名称 */
    @Excel(name = "类目名称")
    private String name;

    /** 状态 1启用,-1禁用 */
    @Excel(name = "状态 1启用,-1禁用")
    private Integer status;

    /** 图标地址 */
    @Excel(name = "图标地址")
    private String icon;

    /** 列表样式 */
    @Excel(name = "列表样式")
    private Integer listStyle;

    /** 备注信息 */
    @Excel(name = "备注信息")
    private String mark;

    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }
    public void setIcon(String icon) 
    {
        this.icon = icon;
    }

    public String getIcon() 
    {
        return icon;
    }
    public void setListStyle(Integer listStyle) 
    {
        this.listStyle = listStyle;
    }

    public Integer getListStyle() 
    {
        return listStyle;
    }
    public void setMark(String mark) 
    {
        this.mark = mark;
    }

    public String getMark() 
    {
        return mark;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("categoryId", getCategoryId())
            .append("parentId", getParentId())
            .append("name", getName())
            .append("status", getStatus())
            .append("orderNum", getOrderNum())
            .append("icon", getIcon())
            .append("listStyle", getListStyle())
            .append("mark", getMark())
            .toString();
    }
}

import request from '@/utils/request'

// 查询品牌 列表
export function listBrand(query) {
  return request({
    url: '/shop/brand/list',
    method: 'get',
    params: query
  })
}

// 查询品牌 详细
export function getBrand(brandId) {
  return request({
    url: '/shop/brand/' + brandId,
    method: 'get'
  })
}

// 新增品牌 
export function addBrand(data) {
  return request({
    url: '/shop/brand',
    method: 'post',
    data: data
  })
}

// 修改品牌 
export function updateBrand(data) {
  return request({
    url: '/shop/brand',
    method: 'put',
    data: data
  })
}

// 删除品牌 
export function delBrand(brandId) {
  return request({
    url: '/shop/brand/' + brandId,
    method: 'delete'
  })
}

// 导出品牌 
export function exportBrand(query) {
  return request({
    url: '/shop/brand/export',
    method: 'get',
    params: query
  })
}
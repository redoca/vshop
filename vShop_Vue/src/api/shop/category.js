import request from '@/utils/request'

// 查询商品类目列表
export function listCategory(query) {
  return request({
    url: '/shop/category/list',
    method: 'get',
    params: query
  })
}

// 查询商品类目详细
export function getCategory(categoryId) {
  return request({
    url: '/shop/category/' + categoryId,
    method: 'get'
  })
}

// 新增商品类目
export function addCategory(data) {
  return request({
    url: '/shop/category',
    method: 'post',
    data: data
  })
}

// 修改商品类目
export function updateCategory(data) {
  return request({
    url: '/shop/category',
    method: 'put',
    data: data
  })
}

// 删除商品类目
export function delCategory(categoryId) {
  return request({
    url: '/shop/category/' + categoryId,
    method: 'delete'
  })
}

// 导出商品类目
export function exportCategory(query) {
  return request({
    url: '/shop/category/export',
    method: 'get',
    params: query
  })
}
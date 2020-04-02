<template>
  <div class="app-container" style="max-width:1140px;">
    <el-form :model="queryParams" ref="queryForm" :inline="true" label-width="68px">
      <!-- <el-form-item label="父类目" prop="parentId">
        <el-input
          v-model="queryParams.parentId"
          placeholder="请输入父ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->

      <el-form-item label="父类目" prop="parentId">
        <treeselect
          v-model="queryParams.parentId"
          :options="categoryOptions"
          :normalizer="normalizer"
          placeholder="请选择父类目"
          style="width: 194px;"
        />
      </el-form-item>

      <el-form-item label="类目名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入类目名称"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
          maxlength="100" show-word-limit
        />
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
          <el-option
            v-for="dict in statusOptions"
            :key="dict.dictValue"
            :label="dict.dictLabel"
            :value="dict.dictValue"
          />
        </el-select>
      </el-form-item>
      <!-- <el-form-item label="排序号" prop="orderNum">
        <el-input
          v-model="queryParams.orderNum"
          placeholder="请输入排序号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="图标地址" prop="icon">
        <el-input
          v-model="queryParams.icon"
          placeholder="请输入图标地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="列表样式" prop="listStyle">
        <el-select v-model="queryParams.listStyle" placeholder="请选择列表样式" clearable size="small">
          <el-option label="请选择字典生成" value />
        </el-select>
      </el-form-item>-->
      <el-form-item>
        <el-button
          class="filter-item"
          type="primary"
          icon="el-icon-search"
          size="mini"
          @click="handleQuery"
        >搜索</el-button>
        <el-button
          class="filter-item"
          type="primary"
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['shop:category:add']"
        >新增</el-button>
      </el-form-item>
    </el-form>

    <el-table
      v-loading="loading"
      :data="categoryList"
      row-key="categoryId"
      default-expand-all
      :tree-props="{children: 'children', hasChildren: 'hasChildren'}"
    >
      <!-- <el-table-column label="父ID" align="center" prop="parentId" /> -->
      <el-table-column label="类目名称" align="center" prop="name" />
      <el-table-column label="状态" align="center" prop="status" :formatter="statusFormat">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.status == 1">启用</el-tag>
          <el-tag v-if="scope.row.status == -1" type="info">禁用</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="排序号" align="center" prop="orderNum" />
      <el-table-column label="图标" align="center">
        <template slot-scope="scope">
          <el-image style="width: 50px; height: 50px" :src="baseApi + scope.row.icon" fit="contain">
            <div slot="error" class="image-slot">
              <i class="el-icon-picture-outline"></i>
            </div>
          </el-image>
        </template>
      </el-table-column>
      <el-table-column label="列表样式" align="center" prop="listStyle" :formatter="shopListStyleFormat"> 
        <template slot-scope="scope">
          <el-tag>{{shopListStyleFormat(scope.row,0)}}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="备注信息" align="center" prop="mark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['shop:category:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['shop:category:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 添加或修改商品类目对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px">
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="父类目" prop="parentId">
          <treeselect
            v-model="form.parentId"
            :options="categoryOptions"
            :normalizer="normalizer"
            placeholder="请选择父类目"
          />
        </el-form-item>
        <el-form-item label="类目名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入类目名称" maxlength="100" show-word-limit/>
        </el-form-item>
        <el-form-item label="状态">
          <el-radio-group v-model="form.status">
            <el-radio
              v-for="dict in statusOptions"
              :key="dict.dictValue"
              :label="parseInt(dict.dictValue)"
            >{{dict.dictLabel}}</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="排序号" prop="orderNum">
          <el-input-number v-model="form.orderNum" :min="0" :max="21474836479" label="请输入排序号"></el-input-number>
        </el-form-item>
        <el-form-item label="图标" prop="icon">
          <!-- <el-input v-model="form.icon" placeholder="请输入图标地址" /> -->
          <el-upload
            class="image-uploader"
            :action="uploadImgUrl"
            :headers="headers"
            :show-file-list="false"
            :on-success="handleImageSuccess"
            :before-upload="beforeImageUpload"
          >
            <img v-if="form.icon" :src="form.iconUrl" class="image" />
            <i v-else class="el-icon-plus image-uploader-icon"></i>
          </el-upload>
        </el-form-item>
        <el-form-item label="列表样式">
          <!-- <el-radio-group v-model="form.listStyle">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group> -->
          <el-radio-group v-model="form.listStyle">
            <el-radio
              v-for="dict in shopListStyleOptions"
              :key="dict.dictValue"
              :label="parseInt(dict.dictValue)"
            >{{dict.dictLabel}}</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="备注信息" prop="mark">
          <el-input v-model="form.mark" type="textarea" placeholder="请输入内容" maxlength="500" show-word-limit />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  listCategory,
  getCategory,
  delCategory,
  addCategory,
  updateCategory,
  exportCategory
} from "@/api/shop/category";
import Treeselect from "@riophae/vue-treeselect";
import "@riophae/vue-treeselect/dist/vue-treeselect.css";
import { getToken } from "@/utils/auth";

export default {
  name: "Category",
  components: { Treeselect },
  data() {
    return {
      // 上传的图片服务器地址
      baseApi: process.env.VUE_APP_BASE_API,
      uploadImgUrl: process.env.VUE_APP_BASE_API + "/common/upload",
      headers: {
        Authorization: "Bearer " + getToken()
      },
      // 遮罩层
      loading: true,
      // 商品类目表格数据
      categoryList: [],
      // 商品类目树选项
      categoryOptions: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 状态 1启用,-1禁用字典
      statusOptions: [],
      // 列表样式 0 详细列表 1 小图  2 大图
      shopListStyleOptions: [],
      // 查询参数
      queryParams: {
        parentId: undefined,
        name: undefined,
        status: undefined,
        orderNum: undefined,
        icon: undefined,
        listStyle: undefined,
        mark: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        parentId: [
          { required: true, message: "父类目不能为空", trigger: "blur" }
        ],
        name: [
          { required: true, message: "类目名称不能为空", trigger: "blur" }
        ],
        status: [
          {
            required: true,
            message: "状态", //  1 启用,-1禁用不能为空
            trigger: "blur"
          }
        ],
        orderNum: [
          { required: true, message: "排序号不能为空", trigger: "blur" }
        ]
      }
    };
  },
  created() {
    this.getList();
    this.getDicts("status").then(response => {
      this.statusOptions = response.data;
    });
    this.getDicts("shop_list_style").then(response => {
      this.shopListStyleOptions = response.data;
    });
    this.getTreeselect();
  },
  methods: {
    /** 查询商品类目列表 */
    getList() {
      this.loading = true;
      listCategory(this.queryParams).then(response => {
        this.categoryList = this.handleTree(
          response.data,
          "categoryId",
          "parentId"
        );
        this.loading = false;
      });
    },
    /** 转换商品类目数据结构 */
    normalizer(node) {
      if (node.children && !node.children.length) {
        delete node.children;
      }
      return {
        id: node.categoryId,
        label: node.name,
        children: node.children
      };
    },
    /** 查询部门下拉树结构 */
    getTreeselect() {
      listCategory().then(response => {
        this.categoryOptions = [];
        const data = { categoryId: 0, name: "顶级节点", children: [] };
        data.children = this.handleTree(
          response.data,
          "categoryId",
          "parentId"
        );
        this.categoryOptions.push(data);
      });
    },
    // 状态 字典翻译
    statusFormat(row, column) {
      return this.selectDictLabel(this.statusOptions, row.status);
    },

    // 列表样式 字典翻译
    shopListStyleFormat(row, column) {
      return this.selectDictLabel(this.shopListStyleOptions, row.listStyle);
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        categoryId: undefined,
        parentId: undefined,
        name: undefined,
        status: 1,
        orderNum: 0,
        icon: undefined,
        iconUrl: undefined,
        listStyle: 0,
        mark: undefined
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.getTreeselect();
      this.open = true;
      this.title = "添加商品类目";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      this.getTreeselect();
      if (row != undefined) {
        this.form.parentId = row.categoryId;
      }
      getCategory(row.categoryId).then(response => {
        this.form = response.data;
        this.form.iconUrl = this.baseApi + this.form.icon;
        this.open = true;
        this.title = "修改商品类目";
      });
    },
    /** 提交按钮 */
    submitForm: function() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.categoryId != undefined) {
            updateCategory(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess("修改成功");
                this.open = false;
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          } else {
            addCategory(this.form).then(response => {
              if (response.code === 200) {
                this.msgSuccess("新增成功");
                this.open = false;
                this.getList();
              } else {
                this.msgError(response.msg);
              }
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      this.$confirm(
        '是否确认删除商品类目"' + row.name + '"?',
        "警告",
        {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }
      )
        .then(function() {
          return delCategory(row.categoryId);
        })
        .then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
        .catch(function() {});
    },
    /** 图片上传 */
    handleImageSuccess(res, file) {
      console.debug(res);
      this.form.icon = res.fileName;
      this.form.iconUrl = URL.createObjectURL(file.raw);
    },
    beforeImageUpload(file) {
      const isJPG = file.type === "image/jpeg";
      const isLt2M = file.size / 1024 / 1024 < 2;

      if (!isJPG) {
        this.$message.error("上传头像图片只能是 JPG 格式!");
      }
      if (!isLt2M) {
        this.$message.error("上传头像图片大小不能超过 2MB!");
      }
      return isJPG && isLt2M;
    }
  }
};
</script>

<style>
.image-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
.image-uploader .el-upload:hover {
  border-color: #409eff;
}
.image-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  line-height: 178px;
  text-align: center;
}
.image {
  width: 178px;
  height: 178px;
  display: block;
}
</style>
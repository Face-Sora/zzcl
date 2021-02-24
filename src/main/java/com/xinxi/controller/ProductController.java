package com.xinxi.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Product;
import com.xinxi.entity.ProductType;
import com.xinxi.entity.User;
import com.xinxi.service.IProductService;
import com.xinxi.service.IProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import com.xinxi.controller.BaseController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author jobob
 * @since 2020-11-24
 */
@Controller
@RequestMapping("/product")
public class ProductController extends BaseController {

    @Autowired
    IProductService productService;

    @Autowired
    IProductTypeService productTypeService;

    @RequestMapping("/toProduct")
    public String toProduct(Model model,int pageNum, int pageSize,@RequestParam(value = "name",required = false)String name,
                            @RequestParam(value="typeId",required = false) String typeId){
        List<ProductType> types = productTypeService.list();
        Page<Product> products;

        if (typeId != null ){

            products = productService.page(new Page<Product>(pageNum,pageSize),new QueryWrapper<Product>().eq("type_id",typeId));
            for (Product product:products.getRecords()) {
                product.setType(productTypeService.getById(product.getTypeId()).getType());
            }
            model.addAttribute("types",types);
            model.addAttribute("products",products);
            model.addAttribute("pages",products.getPages());
            model.addAttribute("code", 8);
            return "product";

        }else if(name == null){
            products = productService.page(new Page<Product>(pageNum,pageSize));
            for (Product product:products.getRecords()) {
                product.setType(productTypeService.getById(product.getTypeId()).getType());
            }
            model.addAttribute("types",types);
            model.addAttribute("products",products);
            model.addAttribute("pages",products.getPages());
            model.addAttribute("code", 8);
            return "product";

        }else{

            products = productService.page(new Page<Product>(pageNum,pageSize),new QueryWrapper<Product>().like("title","%"+name+"%"));
            for (Product product:products.getRecords()) {
                product.setType(productTypeService.getById(product.getTypeId()).getType());
            }
            model.addAttribute("types",types);
            model.addAttribute("products",products);
            model.addAttribute("pages",products.getPages());
            model.addAttribute("code", 8);
            return "product";
        }
    }

    @RequestMapping("/toProductDetail")
    public String toProductDeatil(Model model,int productId){
        Product product = productService.getById(productId);
        product.setType(productTypeService.getById(product.getTypeId()).getType());
        model.addAttribute("product",product);
        model.addAttribute("code", 8);
        return "product_detail";
    }


    @PostMapping("/saveProduct")
    @ResponseBody
    public String save(Product product, @RequestParam(value = "iphoto",required = false) MultipartFile file) {
        if (file != null){
            String filePath = "C:\\products\\";
            String fileName = file.getOriginalFilename();
            File file1 = new File(filePath + fileName);
            if (!file1.getParentFile().exists())
                file1.getParentFile().mkdirs();
            try {
                file.transferTo(file1);
            }catch (Exception e){
                e.printStackTrace();
            }
            product.setPhoto("/products/" + file.getOriginalFilename());
        }

        productService.save(product);

        return "success";
    }
    @RequestMapping("/more")
    public String more(Model model){
        List<ProductType> types = productTypeService.list();
        List<Product> products = productService.list();
        for (Product product:products) {
            product.setType(productTypeService.getById(product.getTypeId()).getType());
        }
        model.addAttribute("types",types);
        model.addAttribute("products",products);
        model.addAttribute("code", 8);
        return "product_more";
    }
}

package com.ssm.controller;

import com.ssm.entity.PageUtil;
import com.ssm.entity.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 说明：用户controller类定义
 * @author 梅真好
 * @company 京东商城（上海）
 * @create 2019-01-09 13:05
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 根据请求是否有id，判断是“跳转到addUser.jsp”，还是跳转到“updateUser.jsp”
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/toAddUser")
    public String toAddUser(@RequestParam(value = "id" , required = false) Integer id , Model model){
        if(id == null){ // 是增加的请求
            return "addUser";
        }else{
            User ResultUser = userService.getUserById(id);
            model.addAttribute("currentUser" , ResultUser);
            return "updateUser";
        }
    }

    /**
     * 显示所有用户信息
     * @param model
     * @return
     */
    @RequestMapping("/userList")
    public String userList(Model model , @RequestParam(value = "page" , required = false) Integer page){

        if(page == null){
            page = 1;
        }
        PageUtil pageUtil = new PageUtil(page,10);
        Map<String,Object> map = new HashMap<>();
        map.put("start" , pageUtil.getStart());
        map.put("size",pageUtil.getSize());


        List<User> users = userService.getUserList(map);
        model.addAttribute("userList",users);
        model.addAttribute("currentPage",page);

        int maxPage = userService.getCount()% pageUtil.getSize() == 0?userService.getCount()/pageUtil.getSize():userService.getCount()/pageUtil.getSize()+1;
        model.addAttribute("maxPage" ,maxPage );
        return "userList";
    }

    /**
     * 根据id是否为空，判断是添加还是更新操作，并重定向到用户列表
     * @param user
     * @param id
     * @return
     */
    @RequestMapping("/doAddUser")
    public String doAddUser(User user ,@RequestParam(value = "id" , required = false) Integer id ){
        if(id == null){ //添加用户到数据库中
            userService.addUser(user);
        }else{ //更新用户到数据库中
            userService.updateUser(user);
        }
        return "redirect:/user/userList";
    }

    /**
     * 根据用户Id，删除用户
     * @param id
     * @return
     */
    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam("id") Integer id){
        userService.deleteUser(id);
        return "redirect:/user/userList";
    }

}

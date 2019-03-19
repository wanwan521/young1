package cn.young.manager.web.controller;

import cn.young.manager.pojo.HotCourse;
import cn.young.manager.service.HotCourseService;
import cn.young.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class PageController {

    @Autowired
    private UserService userService;
    @Autowired
    private HotCourseService service;

    @RequestMapping("/")
    public String getIndex(HttpServletRequest request){
        List<HotCourse> findHotCourse = service.findAllHotCourse();
        request.getSession().setAttribute("HotCourse",findHotCourse );

        return "index";
    }


}

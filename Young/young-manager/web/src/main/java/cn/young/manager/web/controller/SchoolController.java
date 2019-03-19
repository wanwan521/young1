package cn.young.manager.web.controller;

import cn.young.manager.pojo.Course;
import cn.young.manager.pojo.School;
import cn.young.manager.service.CourseService;
import cn.young.manager.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SchoolController {
    @Autowired
    SchoolService schoolService;
    @Autowired
    CourseService courseService;

    @RequestMapping("/schooldetail1")
    public String toSchoolDetail1(HttpServletRequest request){
        long sid = 1;
        School school = schoolService.getSchoolById(sid);
        List<Course> courses = courseService.selectAllCourseBySchoolName(school.getSchName());

        request.setAttribute("schoolname",school);
        request.setAttribute("courses",courses);
        return "schooldetail1";
    }

    @RequestMapping("/schooldetail2")
    public String toSchoolDetail2(HttpServletRequest request){
        long sid = 2;
        School school = schoolService.getSchoolById(sid);
        List<Course> courses = courseService.selectAllCourseBySchoolName(school.getSchName());

        request.setAttribute("schoolname",school);
        request.setAttribute("courses",courses);
        return "schooldetail2";
    }
}

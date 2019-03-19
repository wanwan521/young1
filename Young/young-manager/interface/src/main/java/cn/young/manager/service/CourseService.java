package cn.young.manager.service;


import cn.young.common.pojo.EasyUIDataGrid;
import cn.young.manager.pojo.Course;

import java.util.List;

public interface CourseService {

    Course getCourseinfoById(long id);

    //获取所有的用户
    EasyUIDataGrid getCourseList(int page, int rows);

    List<Course> selectAllCourseBySchoolName(String sname);

    /**
     * 条件查询
     * @param keywords
     * @return
     */
    public List<Course> findCourseByLike(String keywords);
}

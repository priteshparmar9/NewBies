package com.duhacks.blogweb.Controller;

import com.duhacks.blogweb.Dao.BlogRepo;
import com.duhacks.blogweb.Dao.UserRepo;
import com.duhacks.blogweb.Model.Blog;
import com.duhacks.blogweb.Model.User;
import jdk.jfr.Timespan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HomeController {
    ModelAndView mv = new ModelAndView();

    @Autowired
    UserRepo ur;
    @Autowired
    BlogRepo br;

    @RequestMapping("/signup")
    public ModelAndView signup(){
        mv.setViewName("signup");
        return mv;
    }

    @RequestMapping("/validateSignup")
    public ModelAndView validateSignup(String username, String email, String password, long number, HttpServletRequest request){
        List<User> res = ur.findByUsername(username);
        if(res.isEmpty()){
            User u = new User(username, email, password, number);
            ur.save(u);
            mv.setViewName("login");
        }
        else{
            mv.setViewName("signup");
        }
        return mv;
    }

    @RequestMapping("/login")
    public ModelAndView login(){
        mv.setViewName("login");
        return mv;
    }

    @RequestMapping("/validateLogin")
    public ModelAndView validate_Login(String username, String password ,HttpServletRequest request){
        List<User> res = ur.findByUsername(username);
        if(res.isEmpty()){
            mv.setViewName("login");
        }
        else{
            for(User u : res){
                if(u.getPassword().equals(password)){
                    request.getSession().setAttribute("username", username);
                    List<Blog> blogs = (List<Blog>) br.findAll();
                    request.getSession().setAttribute("blogs",blogs);
                    mv.setViewName("index");
                }
                else{
                    mv.setViewName("login");
                }
                break;
            }
        }
        return mv;
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request){
        request.getSession().invalidate();
        mv.setViewName("login");
        return mv;
    }

    @RequestMapping("/")
    public ModelAndView index(HttpServletRequest request){
        mv.setViewName("index");
        List<Blog> blogs = (List<Blog>) br.findAll();
        request.getSession().setAttribute("blogs",blogs);
        return mv;
    }

    @RequestMapping("/writeBlog")
    public ModelAndView writeBlog(){
        mv.setViewName("WriteBlog");
        return mv;
    }

    @RequestMapping("/AddContent")
    public ModelAndView addContent(String title, String content, HttpServletRequest request){
        Blog b = new Blog(title, content, (String) request.getSession().getAttribute("username"));
        br.save(b);

        List<Blog> blogs = (List<Blog>) br.findAll();
        request.getSession().setAttribute("blogs",blogs);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping("/myBlogs")
    public ModelAndView myBlogs(HttpServletRequest request){
        List<Blog> blogs = br.findByUsername((String) request.getSession().getAttribute("username"));
        System.out.println((String) request.getSession().getAttribute("username"));
        request.setAttribute("blogs", blogs);
        return mv;
    }

}

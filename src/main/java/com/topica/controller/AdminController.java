package com.topica.controller;

import com.topica.model.EngtovieEntity;
import com.topica.model.UserEntity;
import com.topica.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @GetMapping(value={"/admin1/{offset}","/admin1"})
    public String list(Model model , @PathVariable(value = "offset", required = false) Integer offset, Integer maxResults) {
     //   List<EngtovieEntity> list = userService.listEng(offset, maxResults);
        model.addAttribute("word", userService.listEng(offset, maxResults));
        model.addAttribute("count", userService.count());
        model.addAttribute("offset", offset);
    //    model.addAttribute("listPersons", list);
        return "admin/admin1";
    }
    @GetMapping("/admin2")
    public String addNewWord(Model model, @RequestParam(value = "id", required = false) Integer id) {
        if(id == null){
            model.addAttribute("word", new EngtovieEntity());
            model.addAttribute("isUpdate", false);
        } else {
            model.addAttribute("word", userService.getEng(id));
            model.addAttribute("isUpdate", true);
        }
        return "admin/admin2";
    }

    @PostMapping("/word-save")
    public String saveWord(@ModelAttribute("word") EngtovieEntity word, @RequestParam("type") int type){
        if (type == 1){
            userService.saveEng(word);
        }
        return "redirect:admin1";
    }


    @GetMapping("/word-delete")
    public String delete(@RequestParam("id") int id) {
        System.out.println(id);
        userService.delete(id);
        return "redirect:admin1";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest req){
        HttpSession session = req.getSession();
        session.removeAttribute("login");
        return "redirect: login";
    }
    @PostMapping(value={"/word-list/{offset}","/word-list"})
    public String adminSearch(Model model, @RequestParam("key") String key, @PathVariable(value = "offset", required = false) Integer offset){
        EngtovieEntity w = userService.searchEng(key);
        List<EngtovieEntity> ws = new ArrayList<EngtovieEntity>();
        ws.add(w);
        model.addAttribute("word", ws);
        return "admin/admin1";
    }

    @PostMapping("/word-update")
    public String updateWord(@ModelAttribute("word") EngtovieEntity word, @RequestParam("type") int type){
        if (type == 1){
            userService.updateEng(word);
        }
        return "redirect:admin1";
    }


}

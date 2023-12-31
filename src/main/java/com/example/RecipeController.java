package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

    @Autowired
    RecipeService recipeService;

    @RequestMapping(value="/posts", method=RequestMethod.GET)
    public String recipeList(Model model) {
        model.addAttribute("recipes", recipeService.getRecipeList());
        return "posts";
    }

    @RequestMapping(value="/add", method=RequestMethod.GET)
    public String addPost() {
        return "addform";
    }

    @RequestMapping(value="/addok", method=RequestMethod.POST)
    public String addPostOK(RecipeVO vo) {
        if(recipeService.insertRecipe(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!");
        return "redirect:posts";
    }

    @RequestMapping(value="view/{id}", method=RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model) {
        model.addAttribute("recipeVO", recipeService.getRecipe(id));
        return "view";
    }

    @RequestMapping(value="editform/{id}", method=RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        model.addAttribute("recipeVO", recipeService.getRecipe(id));
        return "editform";
    }

    @RequestMapping(value="/editok", method=RequestMethod.POST)
    public String editPostOK(RecipeVO vo) {
        if(recipeService.updateRecipe(vo) == 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!");
        return "redirect:posts";
    }

    @RequestMapping("/deleteok/{id}")
    public String deletePostOK(@PathVariable("id") int id) {
        if(recipeService.deleteRecipe(id) == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!");
        return "redirect:../posts";
    }
}

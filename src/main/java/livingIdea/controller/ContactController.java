/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package livingIdea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author greta
 */
@Controller
public class ContactController {
    
    @PostMapping("/contact")
    public String sendEmail(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("message") String msg, RedirectAttributes redirectAttributes) throws ServletException, IOException {
        
        return "redirect:/contact";
    }
    
}

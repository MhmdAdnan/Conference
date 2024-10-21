package com.Adnan.Conference.Service.Controllers;

import com.Adnan.Conference.Service.Services.QRCodeService;
import com.google.zxing.WriterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.io.IOException;

@Controller

public class HomeController {
    @Autowired
    QRCodeService generateqr ;
    @RequestMapping("/")
    public String Homejsp()
    {
        return "index.jsp";
    }
    @RequestMapping("/read")
    public String ReadPage(@RequestParam("qrCode") String qrCode, Model model){
        boolean isValid = true;
        model.addAttribute("isValid", isValid);


        if (isValid) {
            return "ReadMember.jsp";
        } else {

            model.addAttribute("message", "Invalid QR code. Please try again.");
            return "index.jsp";
        }
    }
    @RequestMapping("/add")
    public String addpage()
    {
        //      String img =  generateqr.generateQRCode(qrCode);
        //     generateqr.saveQRCode(img,"C:/Users/Mohamed Adnan/OneDrive/Desktop/qrcode.png");
        return "AddMember.jsp"; 
    }


    @PostMapping("/add/add_member")
    public String add_member()
    {
        System.out.println("a7aaaaaaaaaaaaaaaaaaaaaaa");
        return "redirect:/";
    }


}

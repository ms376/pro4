package com.study.springboot;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {

    @GetMapping("/home")
    public String home(Model model) {
        // 사용자 정보 가져오기
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = (User) authentication.getPrincipal();
        String username = user.getUsername();
        
        // 권한 확인 및 처리
        boolean hasAdminRole = user.getAuthorities().stream()
                .anyMatch(auth -> "ROLE_ADMIN".equals(auth.getAuthority()));
        
        if (hasAdminRole) {
            // 권한에 따른 처리
            model.addAttribute("message", "관리자로 로그인했습니다.");
        } else {
            model.addAttribute("message", "일반 사용자로 로그인했습니다.");
        }

        return "home";
    }
}

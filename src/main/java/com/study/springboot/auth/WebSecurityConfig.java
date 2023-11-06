package com.study.springboot.auth;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


import com.study.springboot.config.FirebaseUserDetailsService;

import jakarta.servlet.DispatcherType;

@Configuration
public class WebSecurityConfig {
	@Bean
	public UserDetailsService userDetailsService() {
		return new FirebaseUserDetailsService();
	}


	@Bean // 변경된 코드
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http.csrf((csrf) -> csrf.disable()).cors((cors) -> cors.disable())
				.authorizeHttpRequests(request -> request.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
//        			/ : 모든 요청명에 대해 권한 없이 접근할 수 있다.
						.requestMatchers("/").permitAll()
						.requestMatchers("/freeboard").permitAll()
						.requestMatchers("/register").permitAll()
						.requestMatchers("/findpro").permitAll()
						.requestMatchers("/fail").permitAll()
						// 정적 리소스(static하위) 에는 권한없이 접근할 수 있다.
						.requestMatchers("/css/**", "/js/**", "/img/**").permitAll()
						// USER,ADMIN 권한 중 하나가 있어야 접근할 수 있다.
						.requestMatchers("/board/notice/noticeeditboard").hasRole("ADMIN") // ADMIN만 허용
						.requestMatchers("/board/notice/noticewritetboard").hasRole("ADMIN") // ADMIN만 허용
						.requestMatchers("/ad1").hasRole("ADMIN") // ADMIN만 허용
						.requestMatchers("/ad2").hasRole("ADMIN") // ADMIN만 허용
						.requestMatchers("/ad3").hasRole("ADMIN") // ADMIN만 허용
						.requestMatchers("/**").hasAnyRole("USER", "ADMIN") // 두권한 허용
//						.requestMatchers("/club").hasAnyRole("USER", "ADMIN") // 두권한 허용
//						.requestMatchers("/review").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/inte").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/wrtb").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/writeform").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/viewboard").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/editboard").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/register").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/uploadForm").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/free").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/ques").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/mypage").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/prf").hasAnyRole("USER", "ADMIN") // 두권한만 허용
//						.requestMatchers("/profileC").hasAnyRole("USER", "ADMIN") // 두권한만 허용
						// ADMIN 권한 만 접근할 수 있다.
				);

		// 로그인 페이지 설정(세큐리티의 디폴트 페이지를 사용한다.)
		http.formLogin((formLogin) -> formLogin.loginPage("/login")
				.loginProcessingUrl("/j_spring_security_check")
				.failureUrl("/fail").usernameParameter("idI").passwordParameter("passwordI").permitAll());

		// 로그 아웃 기본 설정 (/logout으로 인증 해제)
		http.logout((logout) -> logout.logoutUrl("/logout")
				.logoutSuccessUrl("/")
				.permitAll());

		return http.build();
	}
	@Bean
    public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
}

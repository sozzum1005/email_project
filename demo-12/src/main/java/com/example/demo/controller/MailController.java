package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MailService;

@Controller
public class MailController {
	@Autowired
	MailService mailService;

	@RequestMapping("/mail/send")
	public String showSend() {
		return "mail/send";
	}

	@RequestMapping("/mail/doSend")
	@ResponseBody
	public String doSend(String email, String title, String body) {
		Map<String, Object> sendRs = mailService.send(email, title, body);

		return (String) sendRs.get("msg");
	}
}

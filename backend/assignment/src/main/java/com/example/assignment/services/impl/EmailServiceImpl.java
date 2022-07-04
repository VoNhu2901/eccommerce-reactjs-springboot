package com.example.assignment.services.impl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.example.assignment.services.EmailSender;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class EmailServiceImpl implements EmailSender {

  private final static Logger LOGGER = LoggerFactory.getLogger(EmailServiceImpl.class);

  private final JavaMailSender javaMailSender;

  @Override
  @Async
  public void send(String to, String email) {
    try {
      MimeMessage mimeMessage = javaMailSender.createMimeMessage();
      MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
      helper.setText(email, true);
      helper.setTo(to);
      helper.setSubject("Confirm your email");
      helper.setFrom("vonhu@gmail.com");
      javaMailSender.send(mimeMessage);
    } catch (MessagingException e) {
      LOGGER.error("failed to send email", e);
      throw new IllegalStateException("failed to send email", e);
    }
  }

}

package com.bitir.notification.controller;

import com.bitir.notification.dto.MailRequest;
import com.bitir.notification.service.MailService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/notification")
@RequiredArgsConstructor
public class MailController {
    private final MailService mailService;

    @PostMapping("/send-mail")
    @ResponseStatus(HttpStatus.OK)
    public Boolean sendMail(@RequestBody MailRequest mailRequest) {
        return mailService.sendMail(mailRequest);
    }

}

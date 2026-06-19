package com.leonardoricardo.notificacao.infrastructure.exceptions;

import com.leonardoricardo.notificacao.business.EmailService;

public class EmailException extends RuntimeException{

    public EmailException(String mensagem){
        super(mensagem);
    }

    public EmailException(String mensagem, Throwable throwable){
        super(mensagem, throwable);
    }
}

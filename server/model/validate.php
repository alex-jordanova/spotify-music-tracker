<?php
    const MIN_USERNAME_LENGTH = 3;
    const MAX_USERNAME_LENGTH = 30;
    const MIN_PASSWORD_LENGTH = 6;
    const OK = 1;

    function isValidUsername($username) {
        return MIN_USERNAME_LENGTH <= mb_strlen($username) && mb_strlen($username) <= MAX_USERNAME_LENGTH;
    }

    function isValidPassword($password) {
        return  MIN_PASSWORD_LENGTH <= mb_strlen($password);
    }

    function isSamePassword($password, $repeatedPassword) {
        return $password === $repeatedPassword;
    }

    function validateRegistration($toValidate) {
        if (!isValidUsername($toValidate['username'])) {
            return array('message' => 'Потребителското име трябва да е между 3 и 30 символа.');
        }

        if (!isValidPassword($toValidate['password'])) {
            return array('message' => 'Паролата трябва да е поне 6 символа.');
        }

        if (!isSamePassword($toValidate['password'], $toValidate['repeatedpwd'])) {
            return array('message' => 'Двете пароли не съвпадат.');
        }

        return OK;
    }
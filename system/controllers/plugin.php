<?php
/**
 *  PHP Mikrotik Billing (https://freeispradius.com/)
 *  by https://t.me/eldonet
 **/

if(function_exists($routes[1])){
    call_user_func($routes[1]);
}else{
    r2(U.'dashboard', 'e', 'Function not found');
}
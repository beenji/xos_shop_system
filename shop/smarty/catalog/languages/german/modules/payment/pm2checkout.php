<?php
////////////////////////////////////////////////////////////////////////////////
// project    : XOS-Shop, open source e-commerce system
//              http://www.xos-shop.com
//                                                                                                                                      
// filename   : pm2checkout.php
// author     : Hanspeter Zeller <hpz@xos-shop.com>
// copyright  : Copyright (c) 2007 Hanspeter Zeller
// license    : This file is part of XOS-Shop.
//
//              XOS-Shop is free software: you can redistribute it and/or modify
//              it under the terms of the GNU General Public License as published
//              by the Free Software Foundation, either version 3 of the License,
//              or (at your option) any later version.
//
//              XOS-Shop is distributed in the hope that it will be useful,
//              but WITHOUT ANY WARRANTY; without even the implied warranty of
//              MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//              GNU General Public License for more details.
//
//              You should have received a copy of the GNU General Public License
//              along with XOS-Shop.  If not, see <http://www.gnu.org/licenses/>.   
//------------------------------------------------------------------------------
// this file is based on: 
//              osCommerce, Open Source E-Commerce Solutions
//              http://www.oscommerce.com
//              Copyright (c) 2002 osCommerce
//              filename: pm2checkout.php                      
//
//              Released under the GNU General Public License 
////////////////////////////////////////////////////////////////////////////////

  define('MODULE_PAYMENT_2CHECKOUT_TEXT_TITLE', '2CheckOut');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_DESCRIPTION', 'Kreditkarten Test Info:<br /><br />CC#: 4111111111111111<br />Gültig bis: Any');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_TYPE', 'Typ:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_OWNER', 'Kreditkarteninhaber:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_OWNER_FIRST_NAME', 'Kreditkarteninhaber Vorname:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_OWNER_LAST_NAME', 'Kreditkarteninhaber Nachname:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_NUMBER', 'Kreditkarten-Nr.:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_EXPIRES', 'Gültig bis:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_CHECKNUMBER', 'Karten-Prüfnummer:');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_CREDIT_CARD_CHECKNUMBER_LOCATION', '(Auf der Kartenrückseite im Unterschriftsfeld)');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_JS_CC_NUMBER', '* Die \'Kreditkarten-Nr.\' muss mindestens aus ' . CC_NUMBER_MIN_LENGTH . ' Zahlen bestehen.\n');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_ERROR_MESSAGE', 'Bei der Überpüfung Ihrer Kreditkarte ist ein Fehler aufgetreten! Bitte versuchen Sie es nochmal.');
  define('MODULE_PAYMENT_2CHECKOUT_TEXT_ERROR', 'Fehler bei der Überpüfung der Kreditkarte!');
?>

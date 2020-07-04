// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap/dist/css/bootstrap.min.css';
import '@fortawesome/fontawesome-free/css/all.min.css';
import './styles.scss'

require("@rails/ujs").start();
import $ from 'jquery';
import jQuery from 'jquery';
window.jQuery = $; window.$ = jQuery; global.$ = jQuery;
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("@fortawesome/fontawesome-free");
require("bootstrap/dist/js/bootstrap.min");

document.addEventListener('turbolinks:load', function(){
  $(".alert").alert();
});

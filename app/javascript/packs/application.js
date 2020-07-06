// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap/dist/css/bootstrap.min.css';
import '@fortawesome/fontawesome-free/css/all.min.css';
import './styles.scss'

require("@rails/ujs").start();
import Turbolinks from 'turbolinks';
Turbolinks.start();
require("@rails/activestorage").start();
require("channels");
require("@fortawesome/fontawesome-free");
require("bootstrap/dist/js/bootstrap.min");

document.addEventListener('turbolinks:load', function(){
  for (let alert of document.querySelectorAll('.alert')) {
    alert.alert();
  }

  for (let form of document.querySelectorAll('form[method=get]:not([data-remote=true])')) {
    for (let input of form.querySelectorAll('select, input[type=checkbox]')){
      input.addEventListener('change', function(event){
        form.requestSubmit();
      })
    }

    form.addEventListener('submit', function (event) {
      event.preventDefault();
      const entries = [...new FormData(event.target).entries()];
      const actionUrl = new URL(event.target.action);
      const currentUrl = new URL(location.href);
      // if pathname not changed, hand over per parameter to next page.
      if (actionUrl.pathname === currentUrl.pathname && currentUrl.searchParams.has('per')) {
          actionUrl.searchParams.set('per', currentUrl.searchParams.get('per'))
      }
      entries.forEach(entry => actionUrl.searchParams.set(...entry));
      Turbolinks.visit(actionUrl.toString());
    });
  }
});

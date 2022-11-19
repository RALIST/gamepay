//= require turbolinks

document.addEventListener('turbolinks:load', function(){
  console.log('Ready')
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

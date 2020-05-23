// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$(function () {
  $('.hide-btn').click(function () {
    let accountNumberContainer = $(this).parent().find('.acct-num')
    let fullAccountNumber = accountNumberContainer.text().trim()
    let length = fullAccountNumber.length
    let lastFour = fullAccountNumber.slice(-4)
    let hidden = pad(lastFour, length)

    $(accountNumberContainer).html(hidden)
  })

  function pad(str, max) {
    let string = str.toString()
    return string.length < max ? pad('*' + string, max) : string
  }
})

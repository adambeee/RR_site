// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(function() {

    $('.rating_star').click(function() {
        var star = $(this);
        var task_id = $(this).attr('data-task-id');
        var stars = $(this).attr('data-stars');

        for (i = 1; i<= 5; i++){
            if ( i <= stars){
                $('#' + task_id + '_' + i).addClass('on');
            } else{
                $('#' + task_id + '_' + i).removeClass('on');
            }
        }

    });

});
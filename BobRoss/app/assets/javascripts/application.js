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
//= require_tree .

//= require jquery3
//= require popper
//= require bootstrap-sprockets

function mysearch()
{
    var search = document.getElementById("season_search").value;
    var elems = document.querySelectorAll(".pictureSearch");

    for (var i = 0; i < elems.length; i++) 
    {
        if( elems[i].dataset["season"] !== undefined )
        {
            console.log(search + " & " + elems[i].dataset.season)

            if ( search == "all")
            {
                elems[i].style.display = "initial"
            }
            else
            {
                if ( elems[i].dataset.season != search ) 
                {
                    elems[i].style.display = "none"
                }
                else 
                {
                    elems[i].style.display = "initial"
                }
            }
        }
        else {
            console.log("You suck")
        }
    }
}
 var fromRowAdded=0;
 var toRowAdded=0;
 var pickupTable=0;
 var travelTable=0;
 var hotelTable=0;
 var dropTable=0;
 var foodTable=0;
 
 $(function() {
		$(".nav-item").removeClass("active");
		$("#packages").addClass("active");
 });
 function addFromRow() {
  fromRowAdded++;
  var fromTd ="";
  fromTd += '<span id="fromRowShown'+fromRowAdded+'"><br/><input type="text" class="boxInput" /> '
  fromTd +='&nbsp;&nbsp;<a class="plusButton fromLinkShown'+fromRowAdded+' " onclick="cancelFromRow('+fromRowAdded+')"> <i class="material-icons">cancel</i> </a></span>'
  $("#fromTd").append(fromTd);
 }
function cancelFromRow(rowToHide) {
  $("#fromRowShown"+rowToHide).hide();
  document.getElementById("#fromRowShown"+rowToHide).value="";
}

function addToRow() {
	  toRowAdded++;
	  var toTd ="";
	  toTd += '<span id="toRowShown'+toRowAdded+'"><br/><input type="text" class="boxInput" /> '
	  toTd +='&nbsp;&nbsp;<a class="plusButton toLinkShown'+toRowAdded+' " onclick="cancelToRow('+toRowAdded+')"><i class="material-icons">cancel</i></a></span>'
	  $("#toTd").append(toTd);
}
function cancelToRow(rowToHide) {
  $("#toRowShown"+rowToHide).hide();
  document.getElementById("#toRowShown"+rowToHide).value="";
}
  
function addPickupTables() {
	pickupTable++;
	var table = '';
	table+='<div id="pickupDiv'+pickupTable+'"><table class="tabTable" id="pickupBaseTable'+pickupTable+'">';
	table+= document.getElementById("pickupBaseTable").innerHTML;
	table+='</table><a class="plusButton x " onclick="removePickupTable('+pickupTable+')"> <i class="material-icons">cancel</i> </a></div>';
	$("#pickupTable").append(table);
}

function removePickupTable(pickupTable) {
	 $("#pickupDiv"+pickupTable).hide();
}


function addTravelTables() {
	travelTable++;
	var table = '';
	table+='<div id="travelDiv'+travelTable+'"><table class="tabTable" id="travelBaseTable'+travelTable+'">';
	table+= document.getElementById("travelBaseTable").innerHTML;
	table+='</table><a class="plusButton x " onclick="removeTravelTable('+travelTable+')"> <i class="material-icons">cancel</i> </a></div>';
	$("#travelTable").append(table);
}

function removeTravelTable(travelTable) {
	 $("#travelDiv"+travelTable).hide();
}


function addHotelTables() {
	hotelTable++;
	var table = '';
	table+='<div id="hotelDiv'+hotelTable+'"><table class="tabTable" id="hotelBaseTable'+hotelTable+'">';
	table+= document.getElementById("hotelBaseTable").innerHTML;
	table+='</table><a class="plusButton x " onclick="removeHotelTable('+hotelTable+')"> <i class="material-icons">cancel</i> </a></div>';
	$("#hotelTable").append(table);
}

function removeHotelTable(hotelTable) {
	 $("#hotelDiv"+hotelTable).hide();
}


function addDropTables() {
	dropTable++;
	var table = '';
	table+='<div id="dropDiv'+dropTable+'"><table class="tabTable" id="dropBaseTable'+dropTable+'">';
	table+= document.getElementById("dropBaseTable").innerHTML;
	table+='</table><a class="plusButton x " onclick="removeDropTable('+dropTable+')"> <i class="material-icons">cancel</i> </a></div>';
	$("#dropTable").append(table);
}

function removeDropTable(dropTable) {
	 $("#dropDiv"+dropTable).hide();
}


function addFoodTables() {
	foodTable++;
	var table = '';
	table+='<div id="foodDiv'+foodTable+'"><table class="tabTable" id="foodBaseTable'+foodTable+'">';
	table+= document.getElementById("foodBaseTable").innerHTML;
	table+='</table><a class="plusButton x " onclick="removeFoodTable('+foodTable+')"> <i class="material-icons">cancel</i> </a></div>';
	$("#foodTable").append(table);
}

function removeFoodTable(foodTable) {
	 $("#foodDiv"+foodTable).hide();
}

var TabBlock = {
	  s: {
	    animLen: 200
	  },
	  
	  init: function() {
	    TabBlock.bindUIActions();
	    TabBlock.hideInactive();
	  },
	  
	  bindUIActions: function() {
	    $('.tabBlock-tabs').on('click', '.tabBlock-tab', function(){
      TabBlock.switchTab($(this));
    });
},
	  
hideInactive: function() {
    var $tabBlocks = $('.tabBlock');

	$tabBlocks.each(function(i) {
	  var 
	    $tabBlock = $($tabBlocks[i]),
	    $panes = $tabBlock.find('.tabBlock-pane'),
	$activeTab = $tabBlock.find('.tabBlock-tab.is-active');
	      
	      $panes.hide();
	      $($panes[$activeTab.index()]).show();
	    });
 },
	  
 switchTab: function($tab) {
    var $context = $tab.closest('.tabBlock');
    if (!$tab.hasClass('is-active')) {
      $tab.siblings().removeClass('is-active');
      $tab.addClass('is-active');
   
      TabBlock.showPane($tab.index(), $context);
    }
   },
  
  showPane: function(i, $context) {
    var $panes = $context.find('.tabBlock-pane');
    $panes.slideUp(TabBlock.s.animLen);
    $($panes[i]).slideDown(TabBlock.s.animLen);
  }
};

$(function() {
  TabBlock.init();
});



	
// Not Sure if needed	
$(document).ready(function() {
  	$().ready(function() {
    $sidebar = $('.sidebar');

	$sidebar_img_container = $sidebar.find('.sidebar-background');
	
	$full_page = $('.full-page');
	
	$sidebar_responsive = $('body > .navbar-collapse');
	
	window_width = $(window).width();
	
	fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();
	
	if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
	  if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
	    $('.fixed-plugin .dropdown').addClass('open');
	}

}
		
$('.fixed-plugin a').click(function(event) {
  // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
  if ($(this).hasClass('switch-trigger')) {
    if (event.stopPropagation) {
      event.stopPropagation();
    } else if (window.event) {
      window.event.cancelBubble = true;
    }
  }
});

$('.fixed-plugin .active-color span').click(function() {
  $full_page_background = $('.full-page-background');

  $(this).siblings().removeClass('active');
  $(this).addClass('active');

  var new_color = $(this).data('color');

  if ($sidebar.length != 0) {
    $sidebar.attr('data-color', new_color);
  }

  if ($full_page.length != 0) {
    $full_page.attr('filter-color', new_color);
  }

  if ($sidebar_responsive.length != 0) {
    $sidebar_responsive.attr('data-color', new_color);
  }
});

$('.fixed-plugin .background-color .badge').click(function() {
  $(this).siblings().removeClass('active');
  $(this).addClass('active');

  var new_color = $(this).data('background-color');

  if ($sidebar.length != 0) {
    $sidebar.attr('data-background-color', new_color);
  }
});

$('.fixed-plugin .img-holder').click(function() {
  $full_page_background = $('.full-page-background');

  $(this).parent('li').siblings().removeClass('active');
  $(this).parent('li').addClass('active');


  var new_image = $(this).find("img").attr('src');

  if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
    $sidebar_img_container.fadeOut('fast', function() {
      $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
      $sidebar_img_container.fadeIn('fast');
    });
  }

  if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

    $full_page_background.fadeOut('fast', function() {
      $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
      $full_page_background.fadeIn('fast');
    });
  }

  if ($('.switch-sidebar-image input:checked').length == 0) {
    var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
  }

  if ($sidebar_responsive.length != 0) {
    $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
  }
});

$('.switch-sidebar-image input').change(function() {
  $full_page_background = $('.full-page-background');

  $input = $(this);

  if ($input.is(':checked')) {
    if ($sidebar_img_container.length != 0) {
      $sidebar_img_container.fadeIn('fast');
      $sidebar.attr('data-image', '#');
    }

    if ($full_page_background.length != 0) {
      $full_page_background.fadeIn('fast');
      $full_page.attr('data-image', '#');
    }

    background_image = true;
  } else {
    if ($sidebar_img_container.length != 0) {
      $sidebar.removeAttr('data-image');
      $sidebar_img_container.fadeOut('fast');
    }

    if ($full_page_background.length != 0) {
      $full_page.removeAttr('data-image', '#');
      $full_page_background.fadeOut('fast');
    }

    background_image = false;
  }
});

$('.switch-sidebar-mini input').change(function() {
  $body = $('body');
  $input = $(this);

  if (md.misc.sidebar_mini_active == true) {
    $('body').removeClass('sidebar-mini');
    md.misc.sidebar_mini_active = false;
    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

  } else {

    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');
    setTimeout(function() {
    $('body').addClass('sidebar-mini');
      md.misc.sidebar_mini_active = true;
    }, 300);
  }

  // we simulate the window Resize so the charts will get updated in realtime.
  var simulateWindowResize = setInterval(function() {
    window.dispatchEvent(new Event('resize'));
  }, 180);

  // we stop the simulation of Window Resize after the animations are completed
      setTimeout(function() {
        clearInterval(simulateWindowResize);
      }, 1000);

    });
  });
});

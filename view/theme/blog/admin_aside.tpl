<script>
	// update pending count //
	$(function(){

		$("nav").bind('nav-update',  function(e,data){
			var elm = $('#pending-update');
			var register = $(data).find('register').text();
			if (register=="0" || register=="") { register=""; elm.hide();} else { elm.show(); }
			elm.html(register);
		});
	});
</script>
<div class="widget">
    <h3>$admtxt</h3>
    <ul class='admin linklist'>
        <li class='admin link button $admin.site.2'><a href='$admin.site.0'>$admin.site.1</a></li>
        <li class='admin link button $admin.users.2'><a href='$admin.users.0'>$admin.users.1</a> &nbsp; <span id='pending-update' title='$h_pending' class="nav-ajax-left"></span></li>
        <li class='admin link button $admin.plugins.2'><a href='$admin.plugins.0'>$admin.plugins.1</a></li>
        <li class='admin link button $admin.themes.2'><a href='$admin.themes.0'>$admin.themes.1</a></li>
        <li class='admin link button $admin.dbsync.2'><a href='$admin.dbsync.0'>$admin.dbsync.1</a></li>
    </ul>

    {{ if $admin.update }}
    <ul class='admin linklist'>
        <li class='admin link button $admin.update.2'><a href='$admin.update.0'>$admin.update.1</a></li>
        <li class='admin link button $admin.update.2'><a href='https://kakste.com/profile/inthegit'>Important Changes</a></li>
    </ul>
    {{ endif }}


    {{ if $admin.plugins_admin }}<h4>$plugadmtxt</h4>{{ endif }}
    <ul class='admin linklist'>
        {{ for $admin.plugins_admin as $l }}
        <li class='admin link button $l.2'><a href='$l.0'>$l.1</a></li>
        {{ endfor }}
    </ul>
</div>
<div class="widget">        
    <h3>$logtxt</h3>
    <ul class='admin linklist'>
        <li class='admin link button $admin.logs.2'><a href='$admin.logs.0'>$admin.logs.1</a></li>
    </ul>

</div>
<div class="">
	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear"
		data-filter="true">
		<li class="${ params.controller == 'home'?'active':'' }"><g:link controller="home">
				<g:message code="default.home.label" />
			</g:link></li>
		<li class="${ params.controller == 'song'?'active':'' }"><g:link controller="song">
				<g:message code="song.list.label" />
			</g:link></li>
		<li class="${ params.controller == 'band'?'active':'' }"><g:link controller="band">
				<g:message code="band.list.label" />
			</g:link></li>
		<li class="${ params.controller == 'event'?'active':'' }"><g:link controller="event">
				<g:message code="event.list.label" />
			</g:link></li>
	</ul>
</div>

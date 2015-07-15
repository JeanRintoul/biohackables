<%@ page import="org.biohackables.Article" %>



<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'body', 'error')} required">
	<label for="body">
		<g:message code="article.body.label" default="Body" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="body" required="" value="${articleInstance?.body}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="article.tags.label" default="Tags" />
		
	</label>
	<g:select name="tags" from="${org.biohackables.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${articleInstance?.tags*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="article.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${articleInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="article.videos.label" default="Videos" />
		
	</label>
	<g:select name="videos" from="${org.biohackables.Video.list()}" multiple="multiple" optionKey="id" size="5" value="${articleInstance?.videos*.id}" class="many-to-many"/>

</div>


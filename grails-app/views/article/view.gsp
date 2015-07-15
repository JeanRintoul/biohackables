<%@ page import="org.biohackables.Article" %>
<%@ page import="org.markdown4j.Markdown4jProcessor" %>

<!DOCTYPE html>
<html>
	<head>
<%--		<meta name="layout" content="main">--%>
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
			<h1><span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articleInstance}" field="title"/></span></h1>
			<p>
			${raw(new Markdown4jProcessor().process(articleInstance.body))}
			</p>
		</div>
	</body>
</html>

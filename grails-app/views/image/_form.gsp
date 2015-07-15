<%@ page import="org.biohackables.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'imgurCode', 'error')} required">
	<label for="imgurCode">
		<g:message code="image.imgurCode.label" default="Imgur Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="imgurCode" required="" value="${imageInstance?.imgurCode}"/>

</div>


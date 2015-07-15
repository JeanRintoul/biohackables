<%@ page import="org.biohackables.Video" %>



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'youTubeCode', 'error')} required">
	<label for="youTubeCode">
		<g:message code="video.youTubeCode.label" default="You Tube Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="youTubeCode" required="" value="${videoInstance?.youTubeCode}"/>

</div>


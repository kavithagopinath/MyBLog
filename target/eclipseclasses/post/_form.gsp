<%@ page import="myblog.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${postInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="post.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${postInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="1000" required="" value="${postInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="post.comment.label" default="Comment" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${postInstance?.comment?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['post.id': postInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="post.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${postInstance?.createdDate}"  />

</div>


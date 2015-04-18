<%@ page import="cs4760progassign.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${cs4760progassign.Author.list()}" optionKey="id" required="" value="${bookInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'cover', 'error')} ">
	<label for="cover">
		<g:message code="book.cover.label" default="Cover" />
	</label>
	<input style="display:inline" type="file" name="cover" id="cover" accept="image/*" capture />
</div>


<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-illustration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-illustration" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.illustration}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.illustration}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.illustration}" method="POST">
                <fieldset class="form">
                    <div id="create-illustration" class="content scaffold-create" role="main">
                        <form method="post" enctype="multipart/form-data">
                                <div>
                                    <label for="file">Filename
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <input type="file" name="file" id="file" multiple>
                                </div>
                                <div class="fieldcontain required">
                                <label for="annonce">Annonce
                                    <span class="required-indicator">*</span>
                                </label><select name="annonce.id" required="" id="annonce">
                                    <option value="1">project1.Annonce : 1</option>
                                    <option value="2">project1.Annonce : 2</option>
                                    <option value="3">project1.Annonce : 3</option>
                                    <option value="4">project1.Annonce : 4</option>
                                    <option value="5">project1.Annonce : 5</option>
                                    <option value="6">project1.Annonce : 6</option>
                                    <option value="7">project1.Annonce : 7</option>
                                    <option value="8">project1.Annonce : 8</option>
                                    <option value="9">project1.Annonce : 9</option>
                                    <option value="10">project1.Annonce : 10</option>
                                    <option value="11">project1.Annonce : 11</option>
                                    <option value="12">project1.Annonce : 12</option>
                                    <option value="13">project1.Annonce : 13</option>
                                    <option value="14">project1.Annonce : 14</option>
                                    <option value="15">project1.Annonce : 15</option>
                                    <option value="16">project1.Annonce : 16</option>
                                    <option value="17">project1.Annonce : 17</option>
                                    <option value="18">project1.Annonce : 18</option>
                                    <option value="19">project1.Annonce : 19</option>
                                    <option value="20">project1.Annonce : 20</option>
                                    <option value="21">project1.Annonce : 21</option>
                                    <option value="22">project1.Annonce : 22</option>
                                    <option value="23">project1.Annonce : 23</option>
                                    <option value="24">project1.Annonce : 24</option>
                                    <option value="25">project1.Annonce : 25</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>

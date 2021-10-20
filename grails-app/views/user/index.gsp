<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
        <li><a href="/logoff">Log Out</a></li>
    </ul>
</div>

<div id="list-user" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div id="list-user" class="content scaffold-list" role="main">
        <table>
            <thead>
            <tr>

                <th class="sortable"><a href="/user/index?sort=password&amp;max=10&amp;order=asc">Password</a></th>

                <th class="sortable"><a href="/user/index?sort=username&amp;max=10&amp;order=asc">Username</a></th>

                <th class="sortable"><a href="/user/index?sort=tel&amp;max=10&amp;order=asc">Tel</a></th>

                <th class="sortable"><a href="/user/index?sort=email&amp;max=10&amp;order=asc">Email</a></th>

                <th class="sortable"><a
                        href="/user/index?sort=passwordExpired&amp;max=10&amp;order=asc">Password Expired</a></th>

                <th class="sortable"><a
                        href="/user/index?sort=accountLocked&amp;max=10&amp;order=asc">Account Locked</a></th>

                <th class="sortable"><a
                        href="/user/index?sort=accountExpired&amp;max=10&amp;order=asc">Account Expired</a></th>

            </tr>
            </thead>
            <tbody>
                <g:each status="i" in="${userList}" var="${users}"><tr class="${ (i % 2) == 0 ? 'even' : 'odd'}">
                    <td><a href="/user/show/${users.id}">${users.username}${users.password}</a></td>
                    <td>${users.username}</td>
                    <td>${users.tel}</td>
                    <td>${users.email}</td>
                    <td>${users.accountExpired}</td>
                    <td>${users.accountLocked}</td>
                    <td>${users.passwordExpired}</td>
                </tr>
                </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${userCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
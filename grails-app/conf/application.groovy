

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'project1.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'project1.UserRole'
grails.plugin.springsecurity.authority.className = 'project1.Role'
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/**',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/dbconsole/**', access: ['permitAll']],
	[pattern: '/annonce/edit',    access: ['ROLE_ADMIN','ROLE_MODO']],
	[pattern: '/annonce/create',     access: ['ROLE_ADMIN','ROLE_MODO, ROLE_CLIENT']],
	[pattern: '/user/edit',     access: ['ROLE_ADMIN','ROLE_MODO']],
	[pattern: '/user/index',    access: ['ROLE_ADMIN','ROLE_MODO']],
	[pattern: '/user/show',     access: ['ROLE_ADMIN','ROLE_MODO']],
	[pattern: '/user/create',   access: ['ROLE_ADMIN','ROLE_MODO']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]


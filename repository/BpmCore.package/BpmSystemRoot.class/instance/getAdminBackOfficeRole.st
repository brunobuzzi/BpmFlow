bpm users
getAdminBackOfficeRole

	^self getAdminApplication 
				backofficeRolesDetect: [:each | each name = self adminBackOffileRoleName] 
				ifNone: [NoRoleException signal: 'There is no [admin] Back Office role. This is a serious problem contact the System Adminstrator']
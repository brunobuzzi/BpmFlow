bpm users
getAdminUser

	^applicationUsers at: self adminUserName ifAbsent: [NoUserException signal:  'There is no [admin] User. This is a serious problem contact the System Adminstrator']
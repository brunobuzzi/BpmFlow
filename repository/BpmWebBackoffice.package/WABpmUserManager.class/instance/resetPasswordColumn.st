reset password
resetPasswordColumn

	^SewafReportColumn 
		renderBlock: [:user :html | html output: (resetPasswords at: user username ifAbsent: [''])]
		title: ('Reset Password' translateIn: self session)
facilities
grantUsers: grantArray in: appName
	"The receiver grant all associations pairs contained in Array <grantArray> in Application named <appName>.
	<grantArray> format: {'andrew vm' -> 'executer'} where each element is <anAssociation> where the key is the user name and the value is the role name"

	grantArray do: [:eachAssoc | 
		(testRoot getFrontOfficeRoleNamed: eachAssoc value in: appName) grantUser: (self getUserNamed: eachAssoc key) ifPresent: [].
	]
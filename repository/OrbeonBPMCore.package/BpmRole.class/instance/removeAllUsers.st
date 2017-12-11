responsibility
removeAllUsers
	"The receiver ungrant all users"
	| allUsers |

	allUsers := OrderedCollection withAll: users.

	allUsers do: [:each | self ungrantUser: each].
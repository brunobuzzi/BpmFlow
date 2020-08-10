message
unsend
	"The receiver unstore itself in each inbox of users contained in collection <to>"
	"This method is intented for script purpose should not be senders of this on the GUI"
	| recipients |

	recipients := to select: [:each | each isUser].

	"transform roles into users"
	(to select: [:each | each isRole]) do: [:eachRole | eachRole usersDo: [:user | recipients add: user]].

	recipients do: [:eachUser | (eachUser getSystemNotificationsInboxIn: bpmEnvironment) removeEntry: self ifAbsent: []].
message
unsend
	"The receiver unstore itself in each inbox of users contained in collection <to>"
	"This method is intented for script purpose should not be senders of this on the GUI"
	| recipients |

	recipients := to select: [:each | each isUser].

	"transform roles into users"
	(to select: [:each | each isRole]) do: [:eachRole | recipients addAll: eachRole users].

	recipients do: [:eachUser | eachUser getSystemNotificationsInbox removeEntry: self ifAbsent: []].
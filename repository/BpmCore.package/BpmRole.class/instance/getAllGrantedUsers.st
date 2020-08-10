groups
getAllGrantedUsers
	"Answer a collection with all granted users in the receiver (including user groups)"
	| inheritUsers |

	inheritUsers := Set new.
	userGroups do: [:userGroup | userGroup usersDo: [:user | inheritUsers add: user]].
 
	^users asSet, inheritUsers
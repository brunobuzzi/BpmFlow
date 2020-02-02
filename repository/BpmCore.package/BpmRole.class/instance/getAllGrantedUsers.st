groups
getAllGrantedUsers
	"Answer a collection with all granted users in the receiver (including user groups)"
	| inheritUsers |

	inheritUsers := Set new.
	userGroups do: [:userGroup | inheritUsers addAll: userGroup users].
 
	^users asSet, inheritUsers
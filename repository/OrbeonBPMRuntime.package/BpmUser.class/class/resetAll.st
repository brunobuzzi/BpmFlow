other
resetAll
	"Reset all user's inboxes"

	^self cache do: [:each | each resetAll]
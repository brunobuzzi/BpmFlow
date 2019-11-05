tests
testStartTimersLoopShName
	"The script <start-timers-loop.sh> must start a Topaz process named 'TimersLoop' in order to <JadeForBpm> work correctly when listing that Gem.
	See JadeForBpm in Dolphin Smalltalk: 
	BpmAllSessionsPresenter>>fillSessionList"
	| gsFile contents |

	gsFile := GsFile openReadOnServer: self gsBpmFlowPath, '/scripts/start-timers-loop.sh'.
	contents := gsFile contents.
	gsFile close.

	self deny: (contents indexOfSubCollection: '"TimersLoop"') equals: 0
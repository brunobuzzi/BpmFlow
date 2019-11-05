tests
testStartDeferredScriptsShName
	"The script <start-deferred-scripts-loop.sh> must start a Topaz process named 'ScriptsLoop' in order to <JadeForBpm> work correctly when listing that Gem.
	See JadeForBpm in Dolphin Smalltalk: 
	BpmAllSessionsPresenter>>fillSessionList"
	| gsFile contents |

	gsFile := GsFile openReadOnServer: self gsBpmFlowPath, '/scripts/start-deferred-scripts-loop.sh'.
	contents := gsFile contents.
	gsFile close.

	self deny: (contents indexOfSubCollection: '"ScriptsLoop"') equals: 0
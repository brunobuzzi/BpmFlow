xpdl fileout
getZipProcessMapStreamFor: aBpmUser
	| fileName contents contentsNames fileStream |

	fileName := '/tmp/', processName, Lag1MwcRandom new integer printString, '.zip'.
	contents := OrderedCollection new.
	contentsNames := OrderedCollection new.
	self getProcessesTreeAsCollection do: [:proc | 
		contents add: (self xmlHeader, (self generateProcessMapFor: aBpmUser) prettyPrinted).
		contentsNames add: (proc processName, '.xpdl').
	]. 

	AppBackup createZipFileAs: fileName contents: contents as: contentsNames asArray.

	fileStream := FileStream read: fileName.

	^fileStream
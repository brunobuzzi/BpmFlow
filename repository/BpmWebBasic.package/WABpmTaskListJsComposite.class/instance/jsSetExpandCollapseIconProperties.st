javascript
jsSetExpandCollapseIconProperties
	| jsStream iconTiltle |

	jsStream := WriteStream on: String new.

	iconTiltle := 'Expand/Collapse' translateIn: self session.
 
	jsStream nextPutAll: 
'function setExpandCollapseTaskIcon(divId, imageId) {
  if (typeof(Storage) !== "undefined") {
    if (localStorage.getItem(divId) == "collapsed") {
		document.getElementById(imageId).src=''../files/SEWAFIconLibrary/circledown16Png'';
		document.getElementById(imageId).alt=''', iconTiltle, ''';
		document.getElementById(imageId).title=''', iconTiltle, ''';
	} else {
		document.getElementById(imageId).src=''../files/SEWAFIconLibrary/circleup16Png'';
		document.getElementById(imageId).alt=''', iconTiltle, ''';
		document.getElementById(imageId).title=''', iconTiltle, ''';
	}
  } else {}
}'.

	^jsStream contents
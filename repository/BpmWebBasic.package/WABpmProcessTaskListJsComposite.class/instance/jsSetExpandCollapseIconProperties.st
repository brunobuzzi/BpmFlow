javascript
jsSetExpandCollapseIconProperties
	| jsStream |

	jsStream := WriteStream on: String new.

	jsStream nextPutAll: 
'function setExpandCollapseIcon(divId, imageId) {
  if (typeof(Storage) !== "undefined") {
    if (localStorage.getItem(divId) == "expanded") {
		document.getElementById(imageId).src=''../files/SEWAFIconLibrary/circleup16Png'';
		document.getElementById(imageId).alt=''Expand/Collapse'';
		document.getElementById(imageId).title=''Expand/Collapse'';
	} else {
		document.getElementById(imageId).src=''../files/SEWAFIconLibrary/circledown16Png'';
		document.getElementById(imageId).alt=''Expand/Collapse'';
		document.getElementById(imageId).title=''Expand/Collapse'';
	}
  } else {}
}'.

	^jsStream contents
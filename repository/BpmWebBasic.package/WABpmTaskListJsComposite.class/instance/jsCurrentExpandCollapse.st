javascript
jsCurrentExpandCollapse
	| jsStream |

	jsStream := WriteStream on: String new.

	jsStream nextPutAll: 
'function currentExpandCollapseTask(storageId) {
  if (typeof(Storage) !== "undefined") {
    if (localStorage.getItem(storageId) == "collapsed") {
		document.getElementById(storageId).classList.add("process-transition-collapsed");
	} else {
		document.getElementById(storageId).classList.add("process-transition-expanded");
	}
  } else {}
}'.

	^jsStream contents
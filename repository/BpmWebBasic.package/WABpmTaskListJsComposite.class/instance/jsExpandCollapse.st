javascript
jsExpandCollapse
	| jsStream |

	jsStream := WriteStream on: String new.

	jsStream nextPutAll: 
'function expandCollapseTask(storageId) {
  if (typeof(Storage) !== "undefined") {
    if ((localStorage.getItem(storageId) == "expanded") || (localStorage.getItem(storageId) == null)) {
		localStorage.setItem(storageId,"collapsed"); 
		document.getElementById(storageId).classList.add("process-transition-collapsed");
		document.getElementById(storageId).classList.remove("process-transition-expanded");
	} else {
		localStorage.setItem(storageId,"expanded"); 
		document.getElementById(storageId).classList.add("process-transition-expanded");
		document.getElementById(storageId).classList.remove("process-transition-collapsed");
	}
  } else {}
}'.

	^jsStream contents
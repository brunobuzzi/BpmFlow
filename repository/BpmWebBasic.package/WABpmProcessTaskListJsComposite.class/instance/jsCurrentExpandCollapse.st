javascript
jsCurrentExpandCollapse
	| jsStream |

	jsStream := WriteStream on: String new.

	jsStream nextPutAll: 
'function currentExpandCollapse(storageId) {
  if (typeof(Storage) !== "undefined") {
    if (localStorage.getItem(storageId) == "expanded") {
		document.getElementById(storageId).classList.add("process-transition-expanded");
	} else {
		document.getElementById(storageId).classList.add("process-transition-collapsed");
	}
  } else {}
}'.

	^jsStream contents
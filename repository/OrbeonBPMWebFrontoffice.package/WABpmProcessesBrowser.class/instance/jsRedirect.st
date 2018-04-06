js
jsRedirect

	^JSStream on: 'xmlhttp=new XMLHttpRequest();
var path="http://192.168.29.129:8080/orbeon/fr/orbeon/builder/new";
xmlhttp.setRequestHeader("bmflow-user", "admin");
xmlhttp.setRequestHeader("bmflow-group", "admin");
xmlhttp.setRequestHeader("bmflow-roles", "admin");
xmlhttp.open("GET", path, true);
xmlhttp.send(null);
window.location=path;'
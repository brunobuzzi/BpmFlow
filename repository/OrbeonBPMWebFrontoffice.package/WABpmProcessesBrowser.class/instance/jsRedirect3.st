js
jsRedirect3

	^JSStream on: 'var xmlhttp=new XMLHttpRequest();
var path=''http://192.168.29.129:8080/orbeon/fr/orbeon/builder/new'';
xmlhttp.open(''GET'', path, true);
xmlhttp.setRequestHeader(''Origin'', ''http://192.168.29.133'');
xmlhttp.setRequestHeader(''bmflow-user'', ''admin'');
xmlhttp.setRequestHeader(''bmflow-group'', ''admin'');
xmlhttp.setRequestHeader(''bmflow-roles'', ''admin'');
xmlhttp.send(null);
window.location=path;'
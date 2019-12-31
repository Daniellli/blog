var DOM = (document.getElementById) ? 1 : 0; 
  var NS4 = (document.layers) ? 1 : 0;  
  var IE4 = 0;  
  if (document.all)  
  {  
  IE4 = 1;  
  DOM = 0;  
  }  
   
  var win = window; 
  var n = 0;  
   
  function findIt() {  
  if (document.getElementById("searchstr").value != "")  
  findInPage(document.getElementById("searchstr").value);  
  }  
   
   
  function findInPage(str) {  
  var txt, i, found;  
   
  if (str == "")  
  return false;  
   
  if (DOM)  
  {  
  win.find(str, false, true);  
  return true;  
  }  
   
  if (NS4) {  
  if (!win.find(str))  
  while(win.find(str, false, true))  
  n++;  
  else  
  n++;  
   
  if (n == 0)  
  alert("未找到指定内容.");  
  }  
   
  if (IE4) {  
  txt = win.document.body.createTextRange();  
   
  for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {  
  txt.moveStart("character", 1);  
  txt.moveEnd("textedit");  
  }  
   
  if (found) {  
  txt.moveStart("character", -1);  
  txt.findText(str);  
  txt.select();  
  txt.scrollIntoView();  
  n++;  
  }  
  else {  
  if (n > 0) {  
  n = 0;  
  findInPage(str);  
  }  
  else  
  alert("未找到指定内容.");  
  }  
  }  
   
  return false;  
  }
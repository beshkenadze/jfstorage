/**
*@author akira a.k.a. Aleksandr Beshkenadze
*@version 0.1
*@description Cookie alternative  
*/
function getFlash(appName) {
  if (navigator.appName.indexOf ("Microsoft") !=-1) {
    return window[appName];
  } else {
    return document[appName];
  }
}
function $(id) {
  if(document.getElementById(id)){
     return document.getElementById(id);
  }else{
     return false;
  }
}
function setCookie(key,value)
{
  return getFlash('flashStorage').setCookie(key,value);
}
function getCookie(key)
{
  return getFlash('flashStorage').getCookie(key);
}
function removeCookie(key)
{
  return getFlash('flashStorage').removeCookie(key);
}
function isExistCookie(key)
{
  return getFlash('flashStorage').isExistCookie(key);
}
function js2Storage(id,src){
    if(typeof window.isExistCookie == 'function'){
        if(isExistCookie(id)){
            var js = document.createElement("script");
            js.id=id;
            var source = document.createTextNode(getCookie(js.id));
            js.appendChild(source);
            document.body.appendChild(js);
            
        }else{
            var js = document.createElement("script");
            js.id=is;
            js.src=src;
            document.body.appendChild(js);
            setCookie(js.id,js.innerHTML)
        }
    }
}

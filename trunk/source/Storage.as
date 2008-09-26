/**
*@author akira a.k.a. Aleksandr Beshkenadze
*@version 0.1
*@description Cookie alternative  
*/
package {
	import com.utils.Cookie;
	
	import flash.display.Sprite;
	import flash.external.*;
	
	public class Storage extends Sprite
	{
		public var myCookie:Cookie = new Cookie('yousite',1000);
		public function Storage()
		{
			if (ExternalInterface.available){
			    ExternalInterface.addCallback("getCookie", getCookie);
			    ExternalInterface.addCallback("setCookie", setCookie);
			    ExternalInterface.addCallback("isExistCookie", isExistCookie);
			    ExternalInterface.addCallback("removeCookie", removeCookie);
			 }
		}
		public function getCookie(key:String):*{
			trace("cookie " + key+ " as "+ myCookie.get(key));
			return myCookie.get(key);
		}
		public function setCookie(key:String,value:*):void{
			myCookie.put(key,value);
			trace("set "+key+" as " + value + " via javascript");
		}
		public function removeCookie(key:String):*{
			trace("remove cookie " + key+ " as "+ myCookie.get(key));
			return myCookie.remove(key);
		}
		public function isExistCookie(key:String):Boolean{
			return myCookie.isExist(key);
		}
		public function alertCookie(text:Object):void{
			if (ExternalInterface.available) {
		        ExternalInterface.call("alertCookie",
		          'hello&datetime='+myCookie.get('datetime')); 
		          trace("Data Sent!");
		    } else
		        trace("Error sending data!");
			}
	}
}

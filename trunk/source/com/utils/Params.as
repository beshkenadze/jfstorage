package com.utils
{
	import flash.display.LoaderInfo;
	import flash.display.MovieClip;
	public class Params
	{
		public function getParams():Object
		{
			try {
				var myMC:MovieClip = new MovieClip();
		        var params:Object = LoaderInfo(myMC.loaderInfo).parameters;
		        var pairs:Object = {};
		        var key:String;
		        for(key in params) {
		            pairs.key = String(params.key);
		        }
		 
		    } catch(e:Error) {
		        return {};
		    }
		    return params;
		}

	}
}
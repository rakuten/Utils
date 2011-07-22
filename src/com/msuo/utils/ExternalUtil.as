/*
* Copyright (c) 2011, msuo.com All rights reserved.
*/
package com.msuo.utils
{
import flash.external.ExternalInterface;
/**
 * ExternalInterface的代理,以防调用时出错
 * @author austin
 *
 */
public class ExternalUtil
{
	public function ExternalUtil()
	{
	}

	static public function call(functionName:String, ...params):*
	{
		if (ExternalInterface.available)
		{
			params.unshift(functionName);
			return ExternalInterface.call.apply(null, params);
		}
		return null;
	}

	static public function addCallback(functionName:String,closure:Function):void
	{
		if (ExternalInterface.available)
		{
			ExternalInterface.addCallback(functionName, closure);
		}
	}

	static private var _href:String = "";
	/**
	 * 取得网页的路径
	 * @return
	 *
	 */
	static public function getHref():String
	{
		if (ExternalInterface.available)
		{
			if(_href == "")
			{
				if(ExternalInterface.available)
				{
					_href = ExternalInterface.call(
						"function getHref(){return document.URL;}");
				}
				else
				{
					_href = "";
				}
			}
		}
		return _href;
	}
}
}
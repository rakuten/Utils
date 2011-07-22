/*
* Copyright (c) 2011, msuo.com All rights reserved.
*/
package com.msuo.utils
{
/**
 *
 * @author austin
 *
 */
public class BirthDayUtil
{

	/**
	 * 生肖
	 * @param value 8位日期数,如:19821124
	 * @return
	 *
	 */
	static public function cnZodiac(value:Number):uint
	{
		var year:uint = getYear(value);
		var zodiac:uint = 0;
		var start:int = 1901
		var x:int = (start - year) % 12;
		if (x == 1 || x == -11)
		{
			zodiac = 1; //"鼠"
		}
		else if (x == 0)
		{
			zodiac = 2; //"牛"
		}
		else if (x == 11 || x == -1)
		{
			zodiac = 3; //"虎"
		}
		else if (x == 10 || x == -2)
		{
			zodiac = 4; //"兔"
		}
		else if (x == 9 || x == -3)
		{
			zodiac = 5; //"龙"
		}
		else if (x ==8 || x == -4)
		{
			zodiac = 6; //"蛇"
		}
		else if (x == 7 || x == -5)
		{
			zodiac = 7 //"马"
		}
		else if (x == 6 || x == -6)
		{
			zodiac = 8 //"羊"
		}
		else if (x == 5 || x == -7)
		{
			zodiac = 9 //"猴"
		}
		else if (x == 4 || x == -8)
		{
			zodiac = 10 //"鸡"
		}
		else if (x == 3 || x == -9)
		{
			zodiac = 11 //"狗"
		}
		else if (x == 2 || x == -10)
		{
			zodiac = 12 //"猪"
		}
		return zodiac;
	}


	/**
	 * 星座
	 * @param value 8位日期数,如:19821124
	 * @return
	 *
	 */
	static public function enZodiac(value:Number):uint
	{
		var month:uint = getMonth(value);
		var day:uint = getDay(value);
		var zodiac:uint = 0;
		if (month == 12 && day > 22 || month == 1 && day <= 19)
		{
			zodiac = 1; //"摩羯座"
		}
		else if (month == 1 && day > 20 || month == 2 && day <= 18)
		{
			zodiac = 2; //"水瓶座"
		}
		else if (month == 2 && day > 19 || month == 3 && day <= 20)
		{
			zodiac = 3; //"双鱼座"
		}
		else if (month == 3 && day > 21 || month == 4 && day <= 19)
		{
			zodiac = 4; //"白羊座"
		}
		else if (month == 4 && day > 20 || month == 5 && day <= 20)
		{
			zodiac = 5; //"金牛座"
		}
		else if (month == 5 && day > 21 || month == 6 && day <= 21)
		{
			zodiac = 6; //"双子座"
		}
		else if (month == 6 && day > 22 || month == 7 && day <= 22)
		{
			zodiac = 7; //"巨蟹座"
		}
		else if (month == 7 && day > 23 || month == 8 && day <= 22)
		{
			zodiac = 8; //"狮子座"
		}
		else if (month == 8 && day > 23 || month == 9 && day <= 22)
		{
			zodiac = 9; //"处女座"
		}
		else if (month == 9 && day > 23 || month == 10 && day <= 22)
		{
			zodiac = 10; //"天秤座"
		}
		else if (month == 10 && day > 23 || month == 11 && day <= 21)
		{
			zodiac = 11; //"天蝎座"
		}
		else if (month == 11 && day > 22 || month == 12 && day <= 21)
		{
			zodiac = 12; //"射手座"
		}
		return zodiac;
	}

	/**
	 * 取得年龄
	 * @param value 8位日期数,如:19821124
	 * @return
	 *
	 */
	static public function age(value:Number):uint
	{
		var date:Date = new Date();
		var nowTime:Number = date.getFullYear();
		var setYear:uint = getYear(value);
		if (setYear == 0)
		{
			return 0;
		}
		else
		{
			return (nowTime - setYear);
		}
	}

	/**
	 * 取得10进制日期值中的日期
	 * @param value 19821124
	 * @return 24
	 */
	static public function getDay(value:uint):uint
	{
		return value % 100;
	}

	/**
	 * 取得10进制日期值中的月份
	 * @param value 19821124
	 * @return 11
	 */
	static public function getMonth(value:uint):uint
	{
		return (value %10000 - value % 100)/100;
	}

	/**
	 * 取得10进制日期值中的年份
	 * @param value 19821124
	 * @return 1982
	 */
	static public function getYear(value:uint):uint
	{
		return (value - (value % 10000))/10000;
	}

	/**
	 * 将8位日期转为16位
	 * @param value 19821124
	 * @return 409507200000
	 */
	static public function getTime(value:uint):Number
	{
		var date:Date = new Date();
		date.setFullYear(getYear(value));
		date.setMonth(getMonth(value));
		date.setDate(getDay(value));
		return date.getTime();
	}
}
}
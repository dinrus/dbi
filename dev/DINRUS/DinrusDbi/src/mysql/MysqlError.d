﻿/**
 * Authors: The D DBI project
 * Copyright: BSD license
 */
module dbi.mysql.MysqlError;

version = dbi_mysql;
version (dbi_mysql) {

private import dbi.ErrorCode;

package:

/**
 * Convert a MySQL _error code to an КодОшибки.
 *
 * Params:
 *	ошибка = The MySQL _error code.
 *
 * Returns:
 *	The КодОшибки representing ошибка.
 *
 * Note:
 *	Written against the MySQL 5.1 documentation (revision 2737)
 */

КодОшибки спецВОбщ (бцел ошибка) {
	if (ошибка > 999  && ошибка < 2000) {
		return КодОшибки.ОшибкаСервера;
	}
	switch (ошибка) {
		case (0):
			return КодОшибки.ОшибкиНет;
		case (2000):
			return КодОшибки.Неизвестен;
		case (2001):
			return КодОшибки.ОшибкаСокета;
		case (2002):
			return КодОшибки.ОшибкаПодключения;
		case (2003):
			return КодОшибки.ОшибкаПодключения;
		case (2004):
			return КодОшибки.ОшибкаСокета;
		case (2005):
			return КодОшибки.ОшибкаПодключения;
		case (2006):
			return КодОшибки.ОшибкаПодключения;
		case (2007):
			return КодОшибки.ОшибкаПротокола;
		case (2008):
			return КодОшибки.Неизвестен;
		case (2009):
			return КодОшибки.ОшибкаПодключения;
		case (2010):
			return КодОшибки.ОшибкаСокета;
		case (2011):
			return КодОшибки.ОшибкаСокета;
		case (2012):
			return КодОшибки.ОшибкаПодключения;
		case (2013):
			return КодОшибки.ОшибкаПодключения;
		case (2014):
			return КодОшибки.ОбрывСинхронизации;
		case (2015):
			return КодОшибки.ОшибкаСокета;
		case (2016):
			return КодОшибки.ОшибкаСокета;
		case (2017):
			return КодОшибки.ОшибкаСокета;
		case (2018):
			return КодОшибки.ОшибкаСокета;
		case (2019):
			return КодОшибки.Неизвестен;
		case (2020):
			return КодОшибки.ОшибкаПодключения;
		case (2021):
			return КодОшибки.ОшибкаПодключения;
		case (2022):
			return КодОшибки.ОшибкаСокета;
		case (2023):
			return КодОшибки.ОшибкаСокета;
		case (2024):
			return КодОшибки.ОшибкаСокета;
		case (2025):
			return КодОшибки.ОшибкаСокета;
		case (2026):
			return КодОшибки.ОшибкаСокета;
		case (2027):
			return КодОшибки.ОшибкаСокета;
		case (2028):
			return КодОшибки.Неизвестен;
		case (2029):
			return КодОшибки.НеправильныеДанные;
		case (2030):
			return КодОшибки.НеПодготовлен;
		case (2031):
			return КодОшибки.ПарамыНеПривязаны;
		case (2032):
			return КодОшибки.НеправильныеДанные;
		case (2033):
			return КодОшибки.НеверныеПараметры;
		case (2034):
			return КодОшибки.НеверныеПараметры;
		case (2035):
			return КодОшибки.НеправильныеДанные;
		case (2036):
			return КодОшибки.НеверныеПараметры;
		case (2037):
			return КодОшибки.ОшибкаПодключения;
		case (2038):
			return КодОшибки.ОшибкаПодключения;
		case (2039):
			return КодОшибки.ОшибкаПодключения;
		case (2040):
			return КодОшибки.ОшибкаПодключения;
		case (2041):
			return КодОшибки.ОшибкаПодключения;
		case (2042):
			return КодОшибки.ОшибкаПодключения;
		case (2043):
			return КодОшибки.ОшибкаПодключения;
		case (2044):
			return КодОшибки.ОшибкаПодключения;
		case (2045):
			return КодОшибки.ОшибкаПодключения;
		case (2046):
			return КодОшибки.ОшибкаПодключения;
		case (2047):
			return КодОшибки.ОшибкаПодключения;
		case (2048):
			return КодОшибки.ОшибкаПодключения;
		case (2049):
			return КодОшибки.ОшибкаПротокола;
		case (2050):
			return КодОшибки.НеправильныйЗапрос;
		case (2051):
			return КодОшибки.НеправильныеДанные;
		case (2052):
			return КодОшибки.НеправильныеДанные;
		case (2053):
			return КодОшибки.НеправильныеДанные;
		case (2054):
			return КодОшибки.НеРеализовано;
		default:
			return КодОшибки.Неизвестен;
	}
	// Return workaround
    return КодОшибки.Неизвестен;
}

}
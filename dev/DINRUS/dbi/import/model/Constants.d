﻿/**
 * Authors: The D DBI project
 * Copyright: BSD license
 */

module dbi.model.Constants;

enum ТипДби : ббайт 
{ 
    Пусто, Бул, Байт, Крат, 
    Цел, Дол, ББайт, БКрат, 
    БЦел, БДол, Плав, Дво, 
    Ткст, Бинар, Время, 
    ДатаВремя, Десяток, Неук
};

enum ВозможностьДби : бдол
{
    МультиРезультаты, МультиИнструкции 
}


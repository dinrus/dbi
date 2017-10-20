﻿module dbi.AbstractResult;

private import dbi.model.Result;

private import util.log.Log;
private import time.Time,
               time.Clock;

abstract class АбстрактныйРезультат : ПолныйРезультат
{
private:
    Время _штампврем;
    Размест _размест;

protected:
    ИнфОСтолбце[] _метаданные;

    this()
    {
        _штампврем = Часы.сейчас;
    }

public:

    alias ПолныйРезультат.метаданные метаданные;

    Время штампВремени() { return _штампврем; }

    ИнфОСтолбце метаданные(т_мера инд)
    in {
        if (_метаданные !is пусто)
            assert (инд > 0 && инд < _метаданные.length);
    }
    body {
        if (_метаданные is пусто)
            метаданные();
        return _метаданные[инд];
    }

    Размест разместитель()
    {
        return _размест;
    }

    проц разместитель(Размест размест)
    {
        _размест = размест;
    }

}

abstract class АбстрактныеРяды : Ряды
{
private:
    ПолныйРезультат _ряды;

protected:

    Размест _размест;
    ИнфОСтолбце[] _метаданные;

    Логгер лог;

    Время _штампврем;

    this (ПолныйРезультат результаты)
    {
        _ряды = результаты;
        лог = Журнал.отыщи(this.classinfo.имя);
        _штампврем = результаты.штампВремени;
    }

public:

    бдол члоРядов()
    {
        return _ряды.члоРядов;
    }

    бдол члоПолей()
    {
        return _ряды.члоПолей;
    }

    Размест разместитель()
    {
        return _размест;
    }

    проц разместитель(Размест размест)
    {
        _размест = размест;
    }

    Время штампВремени() { return _штампврем; }

    override бул действителен() 
    { 
        return (_ряды.действителен && _штампврем == _ряды.штампВремени); 
    }
}

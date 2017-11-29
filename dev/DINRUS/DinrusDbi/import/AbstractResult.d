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

    Время штампВремени();

    ИнфОСтолбце метаданные(т_мера инд);

    Размест разместитель();

    проц разместитель(Размест размест);

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

    this (ПолныйРезультат результаты);

public:

    бдол члоРядов();

    бдол члоПолей();

    Размест разместитель();

    проц разместитель(Размест размест);

    Время штампВремени() ;

    override бул действителен() ;
}
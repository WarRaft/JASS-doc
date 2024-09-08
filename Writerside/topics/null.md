# null

Специально обученный ноль, под который выделен специальный токен. Поэтому такой код не вызывает ошибку:

```SQL
globals
    integer i = null
    real r = null
    handle h = null
    string s = null
endglobals
```

> Если вы используете одну из сборок [JNGP](https://xgm.guru/p/wc3/jngp-r-updated), то написанный
> ногами [pjass](https://github.com/lep/pjass) не даст вам скомпилировать такой код.

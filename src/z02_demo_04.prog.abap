*&---------------------------------------------------------------------*
*& Report z02_demo_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_04.

DATA result_i TYPE i.
DATA result_p TYPE p LENGTH 8 DECIMALS 4.

result_i = 5 + 3.

WRITE: / |5 + 3 = { result_i } |.

result_i = 5 - 3.

WRITE: / |5 - 3 = { result_i } |.

result_i = 5 * 3.

WRITE: / |5 * 3 = { result_i } |.

result_p = 5 / 3.

WRITE: / |5 / 3 = { result_p } |.

result_i = 5 DIV 3.

WRITE: result_i.

result_i = 5 MOD 3.

WRITE: result_i.

result_i = 5 ** 3.

WRITE: result_i.

**********************************************************************
* Zuweisungsoperatoren
**********************************************************************

result_i = result_i + 1.

result_i += 1.

ADD 1 TO result_i.

WRITE: 'dreifache inkrementierung: ',result_i.

**********************************************************************
* Numerische funktion
**********************************************************************

result_i = abs( -5 ).

WRITE: 'Abs (): ',result_i.

result_p = round( val = '873.9767' dec = 2 ).

write: result_p.

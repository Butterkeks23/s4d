*&---------------------------------------------------------------------*
*& Report z02_demo_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_05.

DATA text TYPE string VALUE 'Hello'.

DATA text2 TYPE string VALUE 'World'.

DATA text3 TYPE string.

text3 = text && | | && text2.


WRITE: text3.

text3 = |{ text } { text2 }|.

WRITE: / text3.

WRITE: / |Länge von Text3: { strlen( text3 ) }|.

*&---------------------------------------------------------------------*
*& Report z02_demo_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_03.

**********************************************************************
*Wichtige ABAP STandardtypen
**********************************************************************

TYPES ty_i TYPE i. "Ganze Zahl (Bsp. 42

TYPES ty_c40 TYPE c LENGTH 40. "Zeichen mit festgegebener Länge

TYPES ty_n7 TYPE n LENGTH 7. "Numerische folge fester länge (Bsp. '12345678'

TYPES ty_d TYPE d. "Datum ( Bsp. `20231016' )

TYPES ty_t TYPE t. "Zeit  ( Bsp. '105525' )

TYPES ty_p162 TYPE p LENGTH 16 DECIMALS 2. "Kommazahl ( Bsp. '567.89' )

TYPES ty_boolean TYPE c LENGTH 1. "Entweder X oder nichts

**********************************************************************
* Gepackte Zahlen
**********************************************************************
* TYPES ty_p162 TYPE p length 16 decimals 2. "Kommazahl ( Bsp. '567.89' )
* Länge in Byte Length 16 -> 16
* Anzahl Ziffern 2*Length-1 -> 31
* Nachkommastellen decimals 2
*Vorkommastellen: Anzahl Ziffern - Decimals -> 29
**********************************************************************
* Deklaration variabler datenobjekte per...
**********************************************************************

DATA matriculation_number TYPE ty_n7. "Lokaler datentyp

DATA decimal TYPE p LENGTH 6 DECIMALS 3. "ABAP Standardtyp

DATA carrier_id TYPE s_carr_id. "Datenelement

**********************************************************************
* Wertzuweisungen
**********************************************************************

*matriculation_number = '1234567'.
*
*DATA connection_id TYPE s_conn_id VALUE '0400'. "Statische Vorbelegung
*
*DATA(text) = 'Hello World'. "Inlinedeklaration
*
*WRITE: matriculation_number, connection_id, text.

**********************************************************************
* Initialisierung
**********************************************************************
*
*CLEAR text.
*
*connection_id = '0000'.
*
*WRITE ' '.

**********************************************************************
* Deklaration Fixer Variablen
**********************************************************************

CONSTANTS pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.

**********************************************************************
* Eingabe Parameter
**********************************************************************

PARAMETERS p_name TYPE s_custname.
PARAMETERS p_pcode TYPE postcode.
PARAMETERS p_city TYPE city.
PARAMETERS p_id TYPE s_customer.

WRITE: (*) p_id, (*) p_name, (*) p_city, (*) p_pcode.

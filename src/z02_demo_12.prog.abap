*&---------------------------------------------------------------------*
*& Report z02_demo_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_12.

**********************************************************************
*Deklaration von Strukturen
**********************************************************************
DATA connection type Z02_connection.
**********************************************************************
*Selektion von Strukturen
**********************************************************************

connection-connection_id = '0400'.

connection-carrier_id = 'LH'.

connection-departure_city = 'FRANKFURT'.

connection-arrival_city = 'NEW YORK'.

write: connection-carrier_id, / connection-connection_id.

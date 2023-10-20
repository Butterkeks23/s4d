*&---------------------------------------------------------------------*
*& Report z02_dmeo_17
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_dmeo_17.

**********************************************************************
*Deklaration Interner tabellen
**********************************************************************

DATA connections TYPE z02_connections. "type tabellentyp

DATA Connections2 TYPE TABLE OF z02_connections.

**********************************************************************
* Hinzufügen von datensätzen
**********************************************************************

connections = VALUE #(
( carrier_id = 'LH' connection_id = '0400' )
( carrier_id = 'UA' connection_id = '0400' departure_city = 'NEW YORK' )
( )
( carrier_id = 'LH' arrival_city = 'FRANKFURT')
).

connections = VALUE #( BASE connections ( carrier_id = 'AA' connection_id = '0017'
) ).

APPEND VALUE #( connection_id = '0401' ) TO connections.


DATA connection TYPE z00_connection.
connection-arrival_city = 'MADRID'.
connection-departure_city = 'BERLIN'.

APPEND connection TO connections.

connections = VALUE #( BASE connections ( connection ) ).

**********************************************************************
*LEsen von datensätzen
**********************************************************************
*Einzelsatz
IF line_exists( connections[ 1 ] ).
  connection = connections[ 1 ]. "Index 1 auswahl
ENDIF.
connection = connections[ carrier_id = 'AA' connection_id = '0017' ]. "Wählt ie zeile anhand von zeilen informationen aus

*Lesen mehrerer Datensätze

LOOP AT connections INTO connection WHERE carrier_id = 'AA' AND arrival_city IS NOT INITIAL.
write: / connection.
ENDLOOP.

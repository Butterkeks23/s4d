*&---------------------------------------------------------------------*
*& Report z02_demo_20
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_20.

DATA connection TYPE spfli. "STruktur
DATA connections TYPE TABLE OF spfli.
DATA carrier_id TYPE s_carr_id.
DATA connection_id TYPE s_conn_id VALUE '0400'.
**********************************************************************
*Lesen eines einzelsatzes
**********************************************************************
SELECT SINGLE FROM spfli
FIELDS *
WHERE carrid = @carrier_id AND connid = @connection_id
INTO @connection.

if sy-subrc <> 0.

    Message 'NO Connection Found' TYPE 'E'.

endif.



**********************************************************************
*lesen mehrfacher datensätze
**********************************************************************

SElect from spfli
fields *
where airpfrom = 'FRA'
INTO TABLE @connections.

if sy-subrc <> 0.
    Message 'NO Connection Found' TYPE 'E'.
endif.

CALL FUnction 'Reuse_ALV_GRID_DISPLAY' "Schöne Tabelle angeben
exporting
i_structure_name = 'SPFLI'
tables
t_outtab = connections.

*cl_salv_table=>factory(
*  EXPORTING
*    list_display   = if_salv_c_bool_sap=>false
**    r_container    =
**    container_name =
*  IMPORTING
*   r_salv_table   = data(alv)
*  CHANGING
*    t_table        = connections
*).
*CATCH cx_salv_msg.

*alv->display(  ).

**********************************************************************
*Definition der zielvariablen
**********************************************************************
data connection2 type z02_connection.

select single from spfli
fields carrid, connid, cityfrom, cityto
WHERE carrid = @carrier_id AND connid = @connection_id
INTO @connection2.

if sy-subrc <> 0.

endif.
*




select single from spfli
fields carrid, connid, cityfrom, cityto
WHERE carrid = @carrier_id AND connid = @connection_id
INTO corresponding fields of @connection.

if sy-subrc <> 0.

endif.

select single from spfli
fields carrid, connid, cityfrom, cityto
WHERE carrid = @carrier_id AND connid = @connection_id
INTO @data(connection3).

if sy-subrc <> 0.

endif.

*&---------------------------------------------------------------------*
*& Report z02_demo_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_08.

PARAMETERS P_cid TYPE s_carr_id.
PARAMETERS p_cid2 TYPE c LENGTH 3.

WRITE 'Systemfelder'(sf1).

WRITE / |Anmeldename: { sy-uname }|.
WRITE / |Datum des Servers: { sy-datum DATE = USER }|.
WRITE / |Datum des Clients: { sy-datlo DATE = USER }|.
WRITE / |Zeit des Servers: { sy-uzeit TIME = USER }|.
WRITE / |Zeit des Clients: { sy-timlo TIME = USER }|.
WRITE / |Anmeldemandat: { sy-mandt }|.
WRITE / |Anmeldespracge: { sy-langu }|.

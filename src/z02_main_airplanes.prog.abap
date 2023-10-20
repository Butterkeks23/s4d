*&---------------------------------------------------------------------*
*& Report z02_main_airplanes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_main_airplanes.

DATA airplane TYPE REF TO zcl_02_airplane.

DATA airplanes TYPE TABLE OF REF TO zcl_02_airplane.

airplane = NEW zcl_02_airplane( airplane_type = 'A380' name = 'Rüdiger net so tief' ).

APPEND airplane TO airplanes.

write: / zcl_02_airplane=>airplane_number.

airplane = NEW zcl_02_airplane( airplane_type = 'MIG19' name = 'Russian Hell Blazer' ).

APPEND airplane TO airplanes.

write: / zcl_02_airplane=>airplane_number.

LOOP AT airplanes INTO airplane.

  WRITE: / airplane->to_string( ).


ENDLOOP.

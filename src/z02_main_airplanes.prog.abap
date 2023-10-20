*&---------------------------------------------------------------------*
*& Report z02_main_airplanes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_main_airplanes.

DATA airplane TYPE REF TO zcl_02_airplane.
DATA(carrier) = NEW zcl_02_carrier( 'Luft Ganja' ).
DATA agency TYPE REF TO zcl_02_travel_agency.
DATA airplanes TYPE TABLE OF REF TO zcl_02_airplane.
DATA biggestmf TYPE REF TO zcl_02_cargoplane.

airplane = NEW zcl_02_cargoplane( airplane_type = 'A380' name = 'Rüdiger net so tief' cargo_capacity = 50 ).
APPEND airplane TO airplanes.
WRITE: / zcl_02_airplane=>airplane_number.

airplane = NEW zcl_02_passenger_plane( airplane_type = 'MIG19' name = 'Russian Hell Blazer' number_of_seats = 200 ).
APPEND airplane TO airplanes.
WRITE: / zcl_02_airplane=>airplane_number.

airplane = NEW zcl_02_cargoplane( airplane_type = 'Es fliegt mit Masse' name = 'dicke berta' cargo_capacity = '300' ).
carrier->addplane( airplane = airplane ).

airplane = NEW zcl_02_cargoplane( airplane_type = 'Flying Whale' name = 'Massiger manuel' cargo_capacity = '310' ).
carrier->addplane( airplane = airplane ).

biggestmf = carrier->get_biggest_cargoplane( ).

WRITE: / |Name: { biggestmf->name } Cargo: { biggestmf->cargo_capacity }|.

agency = new zcl_02_travel_agency( name = 'Sixt' ).

agency->add_partner( partner = carrier ).



*LOOP AT airplanes INTO airplane.
*
*  WRITE: / airplane->to_string( ).
*
*
*ENDLOOP.

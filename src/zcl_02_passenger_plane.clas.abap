CLASS zcl_02_passenger_plane DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_02_airplane.

  PUBLIC SECTION.

    DATA number_of_seats TYPE i.

    METHODS constructor
      IMPORTING
        name            TYPE string
        airplane_type   TYPE string
        number_of_seats TYPE i.

    METHODS to_string REDEFINITION.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_passenger_plane IMPLEMENTATION.
  METHOD constructor.

    super->constructor( name = name airplane_type = airplane_type ).
    me->number_of_seats = number_of_seats.

  ENDMETHOD.

  METHOD to_string.
    string = |Name: { name }, AirplaneType: { airplane_type }, Number of Seats: { number_of_seats }|.
  ENDMETHOD.

ENDCLASS.

CLASS zcl_02_carrier DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_02_partner.
    DATA name TYPE string READ-ONLY.
    DATA airplanes TYPE TABLE OF REF TO zcl_02_airplane READ-ONLY.
    DATA cargoplane TYPE REF TO zcl_02_cargoplane.
    DATA passenger TYPE REF TO zcl_02_passenger_plane.
    DATA airplane TYPE REF TO zcl_02_airplane.


    METHODS constructor
      IMPORTING name TYPE string.

    METHODS addplane
      IMPORTING airplane TYPE REF TO zcl_02_airplane.

    METHODS get_biggest_cargoplane
      RETURNING VALUE(biggest) TYPE REF TO zcl_02_cargoplane.

    METHODS to_string
      RETURNING VALUE(string) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_carrier IMPLEMENTATION.
  METHOD constructor.
    me->name = name.
  ENDMETHOD.

  METHOD addplane.

    APPEND airplane TO airplanes.


  ENDMETHOD.

  METHOD get_biggest_cargoplane.

    LOOP AT airplanes INTO airplane.

      IF airplane IS INSTANCE OF zcl_02_cargoplane.

        cargoplane = CAST #( airplane ).

        IF biggest IS INITIAL OR ( cargoplane->cargo_capacity > biggest->cargo_capacity ).

          biggest = cargoplane.

        ENDIF.


      ENDIF.

    ENDLOOP.


  ENDMETHOD.

  METHOD to_string.
    string = |Name der Fluggesellschaft: { name }|.

    LOOP AT airplanes INTO airplane.

      airplane->to_string( ).

    ENDLOOP.
  ENDMETHOD.

  METHOD zif_02_partner~to_string.

    string = to_string(  ).

  ENDMETHOD.

ENDCLASS.

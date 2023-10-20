CLASS zcl_02_vehicle DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA marke TYPE string READ-ONLY.
    DATA model TYPE string READ-ONLY.
    CLASS-DATA number_of_vehicles TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        marke TYPE string
        model TYPE string.

    METHODS to_string
      RETURNING VALUE(string) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_02_vehicle IMPLEMENTATION.
  METHOD constructor.
    me->marke = marke.
    me->model = model.
    number_of_vehicles += 1.
  ENDMETHOD.


  METHOD to_string.

    string = |Vehicle: { marke } { model } |.

  ENDMETHOD.
ENDCLASS.

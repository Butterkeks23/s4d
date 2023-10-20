CLASS zcl_02_travel_agency DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA partners TYPE z02_partners READ-ONLY.
    data partner type ref to zif_02_partner.
    DATA name TYPE string READ-ONLY.

    METHODS constructor
      IMPORTING name TYPE string.

    METHODS add_partner
      IMPORTING
        partner TYPE REF TO zif_02_partner.

    METHODS to_string
      RETURNING VALUE(string) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_travel_agency IMPLEMENTATION.

  METHOD add_partner.
    append partner to partners.
  ENDMETHOD.

  METHOD constructor.
    me->name = name.
  ENDMETHOD.

  METHOD to_string.
    Write: / name.

    loop at partners into partner.

    partner->to_string( ).

    endloop.

  ENDMETHOD.

ENDCLASS.

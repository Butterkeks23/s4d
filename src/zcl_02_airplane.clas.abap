CLASS zcl_02_airplane DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA name TYPE string READ-ONLY.
    DATA airplane_type TYPE string READ-ONLY.
    CLASS-DATA airplane_number TYPE i.

    METHODS constructor
      IMPORTING name          TYPE string
                airplane_type TYPE string.


    METHODS to_string
      RETURNING VALUE(string) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_airplane IMPLEMENTATION.
  METHOD constructor.

    me->name = name.
    me->airplane_type = airplane_type.
    airplane_number += 1.
  ENDMETHOD.



  METHOD to_string.
    string = |Name: { name }, AirplaneType: { airplane_type }|.
  ENDMETHOD.

ENDCLASS.

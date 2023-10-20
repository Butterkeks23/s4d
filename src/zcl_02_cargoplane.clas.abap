CLASS zcl_02_cargoplane DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_02_airplane.

  PUBLIC SECTION.

    DATA cargo_capacity TYPE i.

    METHODS constructor
      IMPORTING
        name           TYPE string
        airplane_type  TYPE string
        cargo_capacity TYPE i.

    METHODS to_string REDEFINITION.

*RETURNING VALUE(string) TYPE string.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_cargoplane IMPLEMENTATION.
  METHOD constructor.

    super->constructor( name = name airplane_type = airplane_type ).

    me->cargo_capacity = cargo_capacity.

  ENDMETHOD.

  METHOD to_string.

    string = |Name: { name }, AirplaneType: { airplane_type }, Cargo Capacity: { cargo_capacity }|.

  ENDMETHOD.

ENDCLASS.

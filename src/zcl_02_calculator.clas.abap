CLASS zcl_02_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS Calculate_Exponent

      IMPORTING
                base_value    TYPE zabap_decimal
                exponent      TYPE zabap_decimal

      RETURNING VALUE(result) TYPE zabap_decimal.



    CLASS-METHODS Calculate_Percentage

      IMPORTING

                base_value    TYPE zabap_decimal
                percentage    TYPE zabap_decimal
      RETURNING VALUE(result) TYPE zabap_decimal.





    CLASS-METHODS divide
      IMPORTING
                value1        TYPE z00_decimal
                value2        TYPE z00_decimal
      RETURNING VALUE(result) TYPE z00_decimal

      RAISING   cx_sy_zerodivide.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_calculator IMPLEMENTATION.

  METHOD divide.
    result = value1 / value2.
  ENDMETHOD.

  METHOD Calculate_Percentage.
    result = base_value * ( percentage / 100 ).
  ENDMETHOD.

  Method Calculate_Exponent.

    result = base_value.
WHILE sy-index  <= exponent - 1.

  result = result * base_value.

ENDWHILE.

  endmethod.

ENDCLASS.

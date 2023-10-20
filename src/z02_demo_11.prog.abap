*&---------------------------------------------------------------------*
*& Report z02_demo_11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_11.

TRY.
    DATA(result) = zcl_02_calculator=>divide(
                     value1 = 5
                     value2 = 5
                   ).
  CATCH cx_sy_zerodivide INTO DATA(e).
    WRITE e->get_text( ).
ENDTRY.
WRITE result.

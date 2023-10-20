*&---------------------------------------------------------------------*
*& Report z02_demo_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_09.
**********************************************************************
* Definitionen
**********************************************************************

PARAMETERS p_zahl01 TYPE zabap_decimal.

PARAMETERS p_zahl02 TYPE zabap_decimal OBLIGATORY.

PARAMETERS p_plus RADIOBUTTON GROUP opts.

PARAMETERS p_minus RADIOBUTTON GROUP opts.

PARAMETERS p_multi RADIOBUTTON GROUP opts.

PARAMETERS p_div RADIOBUTTON GROUP opts.

PARAMETERS p_perc RADIOBUTTON GROUP opts.

PARAMETERS p_expo RADIOBUTTON GROUP opts.

DATA erg_p TYPE p LENGTH 4 DECIMALS 2.

**********************************************************************
*Eingabeprüfung
**********************************************************************

AT SELECTION-SCREEN.

  IF p_plus = '' AND p_minus = '' AND p_multi = '' AND p_div = '' AND p_perc = '' AND p_expo = ''.


    MESSAGE e001(z02).

  ENDIF.

  IF p_zahl01 = '' OR p_zahl02 = ''.

    MESSAGE e002(z02).

  ENDIF.

  IF p_multi = 'X' AND p_zahl02 IS INITIAL.

    MESSAGE e000(z02).

  ENDIF.

**********************************************************************
*Hauptverarbeitung
**********************************************************************

START-OF-SELECTION.

  CASE abap_true.

    WHEN p_plus.

      WRITE: |{ p_zahl01 } + { p_zahl02 } = { p_zahl01 + p_zahl02 }|.


    WHEN p_minus.

      WRITE: |{ p_zahl01 } - { p_zahl02 } = { p_zahl01 - p_zahl02 }|.

    WHEN p_multi.

      WRITE: |{ p_zahl01 } * { p_zahl02 } = { p_zahl01 * p_zahl02 }|.

    WHEN p_div.

      erg_p = p_zahl01 / p_zahl02.

      WRITE: |{ p_zahl01 } / { p_zahl02 } = { erg_p }|.

    WHEN p_perc.

      DATA(result) = zcl_02_calculator=>calculate_percentage(
                       base_value = p_zahl01
                       percentage = p_zahl02
                     ).
      WRITE |{ p_zahl01 } % { p_zahl02 } = { result }|.

    WHEN p_expo.

      DATA(resultexpo) = zcl_02_calculator=>calculate_exponent(
                       base_value = p_zahl01
                       exponent   = p_zahl02
                     ).
      WRITE |{ p_zahl01 } ^ { p_zahl02 } = { resultexpo }|.


  ENDCASE.

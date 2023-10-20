*&---------------------------------------------------------------------*
*& Report z02_demo_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_10.

PARAMETERS p_cid TYPE s_carr_id.


PARAMETERS p_chckbx AS CHECKBOX.

PARAMETERS p_opt1 RADIOBUTTON GROUP opts.

PARAMETERS p_opt2 RADIOBUTTON GROUP opts.

PARAMETERS p_opt3 RADIOBUTTON GROUP opts.

IF p_chckbx = 'X'. "If p_chckbx = abap_true.
  MESSAGE i000(z02) WITH sy-uname.
ENDIF.

CASE abap_true.

  WHEN p_opt1.

    message e001(z02).
    WRITE 'Option 1'.

  WHEN p_opt1.

    WRITE 'Option 2'.

  WHEN p_opt1.

    WRITE 'Option 3'.

ENDCASE.

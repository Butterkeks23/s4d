CLASS zcl_02_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get_booking_with_customer
      IMPORTING carrier_id    TYPE s_carr_id
                connection_id TYPE s_conn_id
                flight_date   TYPE s_date
                booking_id    TYPE s_book_id


      RETURNING VALUE(result) TYPE zabap_booking_with_customer.

    CLASS-METHODS get_bookings

      IMPORTING customer_id   TYPE s_customer

      RETURNING VALUE(result) TYPE zabap_bookings.






  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_helper IMPLEMENTATION.
  METHOD get_booking_with_customer.

    DATA(booking) = zcl_abap_helper=>get_booking(
                      carrier_id    = carrier_id
                      connection_id = connection_id
                      flight_date   = flight_date
                      booking_id    = booking_id
                    ).
*                  CATCH zcx_no_booking_found.

    DATA(customer) = zcl_abap_helper=>get_customer( customer_id =  booking-customer_id ).
*                 CATCH zcx_no_customer_found.

    DATA booking_with_customer TYPE zabap_booking_with_customer.

    booking_with_customer = CORRESPONDING #( booking ).
    booking_with_customer = CORRESPONDING #( BASE ( booking_with_customer ) customer ).

    result = booking_with_customer.



  ENDMETHOD.

  METHOD get_bookings.

    DATA(bookings) = zcl_abap_helper=>get_bookings( customer_id = customer_id ).
*                     CATCH zcx_no_booking_found.

    result = bookings.

  ENDMETHOD.

ENDCLASS.

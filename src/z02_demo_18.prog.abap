*&---------------------------------------------------------------------*
*& Report z02_demo_18
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_demo_18.

PARAMETERS p_cid  TYPE s_customer.

DATA(bookings) = zcl_02_helper=>get_bookings( customer_id =  p_cid ).
DATA booking TYPE zabap_booking.

DELETE bookings WHERE flight_date < sy-datum.

LOOP AT bookings REFERENCE INTO DATA(booking1).

  booking1->price *= '1.1'.

ENDLOOP.

SORT bookings BY price DESCENDING.

LOOP AT bookings INTO booking.

  WRITE: / | Carrier ID:{ booking-carrier_id } Connection ID:{ booking-connection_id }Flugdatum:{ booking-flight_date }Booking ID:{ booking-booking_id }Customer ID:{ booking-customer_id }Customer Type:{ booking-customer_type } Preis:{ booking-price }|.

ENDLOOP.

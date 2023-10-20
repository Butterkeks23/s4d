*&---------------------------------------------------------------------*
*& Report z02_main_vehicles
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_main_vehicles.

*DEMO 1: Objekte und referenz variablen

DATA vehicle TYPE REF TO zcl_02_vehicle.

*vehicle = NEW zcl_02_vehicle( ). "Vehicle vehicle = new Vehicle(  );

*DATA(vehicle2) = NEW zcl_02_vehicle(  ).

DATA vehicles TYPE TABLE OF REF TO zcl_02_vehicle.

WRITE: zcl_02_vehicle=>number_of_vehicles.
*vehicle = NEW zcl_02_vehicle(  ).
*
*vehicle->set_marke( marke = 'VW' ).
*
*vehicle->set_model( model = 'UP' ).
*
*vehicle->to_string( ).
*
*APPEND vehicle TO vehicles.

vehicle = NEW zcl_02_vehicle( marke = 'VW' model = 'UP' ).

APPEND vehicle TO vehicles.



**********************************************************************
*Ausgabe
**********************************************************************

LOOP AT vehicles INTO vehicle.
  WRITE: / vehicle->to_string( ).
ENDLOOP.

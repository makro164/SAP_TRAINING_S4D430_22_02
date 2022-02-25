CLASS zcl_00_d_calc_departure DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_d_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_determination~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_d_calc_departure IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    DATA connections TYPE zti00_connectiontp.
    DATA message TYPE REF TO zcm_00_connection.

    " Daten lesen
    io_read->retrieve(
      EXPORTING
        iv_node       = is_ctx-node_key
        it_key        = it_key
      IMPORTING
        eo_message    = eo_message
        et_data       = connections
        et_failed_key = et_failed_key ).

    " Nachrichten-Container erstellen
    IF eo_message IS NOT BOUND.
      eo_message = /bobf/cl_frw_factory=>get_message( ).
    ENDIF.

    " Daten sequentiell durchlaufen
    LOOP AT connections REFERENCE INTO DATA(connection).
      SELECT SINGLE FROM scitairp
       FIELDS *
       WHERE airport = @connection->airportfrom
       INTO @DATA(airport_from).

      connection->cityfrom = airport_from-mastercity.
      connection->countryfrom = airport_from-country.

      " Daten zurückschreiben
      io_modify->update(
        EXPORTING
          iv_node = is_ctx-node_key
          iv_key  = connection->key
          is_data = connection ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.

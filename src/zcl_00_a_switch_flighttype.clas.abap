CLASS zcl_00_a_switch_flighttype DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_action~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_a_switch_flighttype IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.

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
      IF connection->flighttype = 'X'.
        connection->flighttype = ''.
      ELSE.
        connection->flighttype = 'X'.
      ENDIF.

      " Nachricht erzeugen
      message = NEW zcm_00_connection(
        textid       = zcm_00_connection=>co_switch_successful
        severity     = zcm_00_connection=>co_severity_info
        i_flighttype = connection->flighttype ).
      eo_message->add_cm( message ).

      " Daten zurückschreiben
      io_modify->update(
        EXPORTING
          iv_node = is_ctx-node_key
          iv_key  = connection->key
          is_data = connection ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.

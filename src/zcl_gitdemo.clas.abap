CLASS zcl_gitdemo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    CLASS-DATA out TYPE REF TO if_oo_adt_classrun_out .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS greet .
ENDCLASS.



CLASS zcl_gitdemo IMPLEMENTATION.


  METHOD greet.

    DATA user_id TYPE sxco_user_name.
    user_id = xco_cp=>sy->user( )->name.

    out->write( |My User id is => { user_id }| ).
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    me->out = out.
    greet( ).

  ENDMETHOD.
ENDCLASS.

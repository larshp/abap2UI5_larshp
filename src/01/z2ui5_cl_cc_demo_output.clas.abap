CLASS z2ui5_cl_cc_demo_output DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        view TYPE REF TO z2ui5_cl_xml_view.
    METHODS control
      IMPORTING
        val TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

  PROTECTED SECTION.
      DATA mo_view TYPE REF TO z2ui5_cl_xml_view.
  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_cc_demo_output IMPLEMENTATION.

  METHOD constructor.

    me->mo_view = view.

  ENDMETHOD.

  METHOD control.

     result = mo_view->_cc_plain_xml( `<html:style type="text/css">body {` && |\n|  &&
                              `     font-family: Arial;` && |\n|  &&
                              `     font-size: 90%;` && |\n|  &&
                              `}` && |\n|  &&
                              `table {` && |\n|  &&
                              `     font-family: Arial;` && |\n|  &&
                              `     font-size: 90%;` && |\n|  &&
                              `}` && |\n|  &&
                              `caption {` && |\n|  &&
                              `     font-family: Arial;` && |\n|  &&
                              `     font-size: 90%;` && |\n|  &&
                              `     font-weight:bold;` && |\n|  &&
                              `     text-align:left;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.heading1 {` && |\n|  &&
                              `    font-size: 150%;` && |\n|  &&
                              `     color:#000080;` && |\n|  &&
                              `     font-weight:bold;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.heading2 {` && |\n|  &&
                              `    font-size: 135%;` && |\n|  &&
                              `     color:#000080;` && |\n|  &&
                              `     font-weight:bold;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.heading3 {` && |\n|  &&
                              `    font-size: 120%;` && |\n|  &&
                              `     color:#000080;` && |\n|  &&
                              `     font-weight:bold;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.heading4 {` && |\n|  &&
                              `    font-size: 105%;` && |\n|  &&
                              `     color:#000080;` && |\n|  &&
                              `     font-weight:bold;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.normal {` && |\n|  &&
                              `    font-size: 100%;` && |\n|  &&
                              `     color:#000000;` && |\n|  &&
                              `     font-weight:normal;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.nonprop {` && |\n|  &&
                              `    font-family: Courier New;` && |\n|  &&
                              `     font-size: 100%;` && |\n|  &&
                              `     color:#000000;` && |\n|  &&
                              `     font-weight:400;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.nowrap {` && |\n|  &&
                              `    white-space:nowrap;` && |\n|  &&
                              `}` && |\n|  &&
                              `span.nprpnwrp {` && |\n|  &&
                              `    font-family: Courier New;` && |\n|  &&
                              `     font-size: 100%;` && |\n|  &&
                              `     color:#000000;` && |\n|  &&
                              `     font-weight:400;` && |\n|  &&
                              `     white-space:nowrap;` && |\n|  &&
                              `}` && |\n|  &&
                              `tr.header {` && |\n|  &&
                              `    background-color:#D3D3D3;` && |\n|  &&
                              `}` && |\n|  &&
                              `tr.body {` && |\n|  &&
                              `    background-color:#EFEFEF;` && |\n|  &&
                              `}` && |\n|  &&
                              `</html:style>`
              )->html( val ).

  ENDMETHOD.

ENDCLASS.

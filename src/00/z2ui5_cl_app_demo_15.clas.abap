CLASS z2ui5_cl_app_demo_15 DEFINITION PUBLIC.

  PUBLIC SECTION.

    INTERFACES z2ui5_if_app.

    DATA mv_html_text TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_app_demo_15 IMPLEMENTATION.


  METHOD z2ui5_if_app~controller.

    CASE client->get( )-lifecycle_method.

      WHEN client->cs-lifecycle_method-on_init.

        mv_html_text = `<h3>subheader</h3><p>link: <a href="https://www.sap.com" style="color:green; font-weight:600;">link to sap.com</a> - links open in ` &&
`a new window.</p><p>paragraph: <strong>strong</strong> and <em>emphasized</em>.</p><p>list:</p><ul` &&
 `><li>list item 1</li><li>list item 2<ul><li>sub item 1</li><li>sub item 2</li></ul></li></ul><p>pre:</p><pre>abc    def    ghi</pre><p>code: <code>var el = document.getElementById("myId");</code></p><p>cite: <cite>a reference to a source</cite></p>` &&
 `<dl><dt>definition:</dt><dd>definition list of terms and descriptions</dd>`.

      WHEN client->cs-lifecycle_method-on_event.
        CASE client->get( )-event.
          WHEN 'BACK'.
            client->nav_app_leave( client->get( )-id_prev_app_stack ).
        ENDCASE.

      WHEN client->cs-lifecycle_method-on_rendering.

        DATA(view) = client->factory_view( 'VIEW_INPUT' ).
        view->page( title = 'abap2UI5 - Formatted Text' navbuttontap = view->_event( 'BACK' )

            )->header_content(
                     )->toolbar_spacer(
                     )->link( text = 'Source_Code' href = client->get( )-s_request-url_source_code
            )->get_parent(

           )->vbox( 'sapUiSmallMargin'
                 )->link( text = 'Control Documentation - SAP UI5 Formatted Text' href = 'https://sapui5.hana.ondemand.com/#/entity/sap.m.FormattedText/sample/sap.m.sample.FormattedText'
                 )->get_parent(
            )->vbox( 'sapUiSmallMargin'
                 )->formatted_text( htmltext = mv_html_text ).

    ENDCASE.

  ENDMETHOD.
ENDCLASS.
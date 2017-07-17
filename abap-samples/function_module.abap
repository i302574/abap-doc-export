"! Sample text for sample FuMO
"! some <strong>SUPER IMPORTANT STUFF</strong>
"! some <em>other important lines</em>
"! <p>extra paragraph that is not realy needed but still here</p>
"!
"!
"! @parameter IM_PARAM1 | parameter containing the answer to life, the universe and everything.
"! allowed values:
"! <ul>
"!  <li>42</li>
"! </ul>
"! @parameter IM_PARAM2 | text bla bla
"! @parameter EX_PARAM_1 | last documented param
FUNCTION Z_LOREM_IPSUM_FUBA
 IMPORTING
  IM_PARAM1 TYPE I
  IM_PARAM2 TYPE C DEFAULT 'forty-two'
 EXPORTING
  EX_PARAM_1 TYPE C
  EX_PARAM_2 TYPE REF TO <ref_type>
 CHANGING
  CH_PARAM TYPE ANY
 TABLES
  TAB_PARAM TYPE BAPIRET2
 EXCEPTIONS
  SOME_TERRIBLE_HAPPEN
  CALL_FOR_HELP
  EXIT_BUILDING.


ENDFUNCION.

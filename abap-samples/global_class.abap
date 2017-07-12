************************************************************************
* 
* Some other Comments
*
************************************************************************
"! Data Access Object for HANA Users
class zcl_global_class definition public.

  public section.
  
"! <h1>get_multiple_user_details</h1>
"!
"! @parameter i_dbcon_name |
"! @parameter i_user_name |
"! @parameter rt_user_details |
"! @parameter rt_messages |
"! @raising cx_sql_exception | I WANNA SEE YOU BE BRAVE. Don't catch this. YOLO
	methods get_multiple_user_details
	  importing
				!i_dbcon_name    type dbcon_name optional
				!i_user_name     type if_dbms_user=>ty_db_user_name optional
	  exporting
				!rt_user_details type if_dbms_user=>ty_t_db_user_data
				!rt_messages     type bapirettab
	  raising   !cx_sql_exception .
	  
	  
  private section.
  
"! Explaining why this member variable is super important
"! over multiple lines
    class-data !mo_global_class type ref to zcl_global_class.

    data: !mo_dbms_user      type ref to cl_dbms_user_hdb,
          !mo_sql_connection type ref to CL_SQL_CONNECTION.

ENDCLASS.

CLASS zcl_global_class IMPLEMENTATION.

  method get_multiple_user_details.
  
  endmethod.
  
ENDCLASS.

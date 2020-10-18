<%@page import="action.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>



<%

    try {

        String id = request.getQueryString();
        String sql = "update user set status = 'Activated' where id='" + id + "'";

        Connection con = Dbcon.getCon();
        Statement st = con.createStatement();
        int i = st.executeUpdate(sql);
        if (i != 0) {
            response.sendRedirect("approve.jsp?Approved");
        } else {
            response.sendRedirect("approve.jsp?Pls_Check");
        }
    } catch (Exception e) {
        e.printStackTrace();;
    }


%>
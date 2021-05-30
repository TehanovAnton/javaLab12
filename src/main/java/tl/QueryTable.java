package tl;

import classes.DB;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class QueryTable extends TagSupport {
    private String tableName;

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    @Override
    public int doStartTag() throws JspException {
        String tag;
        try {
            ResultSet rs = DB.getTable(tableName);
            JspWriter out = pageContext.getOut();

            out.write("<table border=\"2\" width=\"50%\">" +
                                "<tr>" +
                                    "<th>Id</th>" +
                                    "<th>First_Name</th>" +
                                "</tr>");
            while (rs.next()) {
                out.write(
                        "<tr>" +
                                "<td>"+ rs.getString("k") + "</td>" +
                                "<td>"+ rs.getString("v") + "</td>" +
                             "</tr>"
                );
            }
            out.write("</table>");

        } catch (IOException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return SKIP_BODY;
    }
}

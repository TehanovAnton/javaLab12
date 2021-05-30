package tl;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class AttrTl extends TagSupport {
    private String usertype;

    public void setUsertype(String userType) {
        this.usertype = userType;
    }

    @Override
    public int doStartTag() throws JspException {
        try {
            String to = null;
            if ("admin".equalsIgnoreCase(usertype)) {
                to = "Welcome, you have " + usertype + " permission";
            }
            else {
                to = "No permission for this Page";
            }
            pageContext.getOut().write("<hr/>" + to + "<hr/>");
        } catch (IOException e) {
            e.printStackTrace();
        }

        return SKIP_BODY;
    }
}

package tl;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.GregorianCalendar;

@SuppressWarnings("serial")
public class TimeTL extends TagSupport {
    @Override
    public int doStartTag(){
        GregorianCalendar gc = new GregorianCalendar();
        String time = "<hr/>Time: <b> " + gc.getTime() + " </b><hr/>";

        try {
            JspWriter out = pageContext.getOut();
            out.write(time);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }
}

package tl;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class EnterRegister extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        String tag = "<input type=\"submit\" value=\"Вход\" style=\"margin: 5px\">\n" +
                "    <input type=\"submit\" value=\"Регистрация\">";

        try {
            JspWriter out = pageContext.getOut();
            out.write(tag);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return SKIP_BODY;
    }
}

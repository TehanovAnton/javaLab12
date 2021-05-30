package classes;

import javax.jms.Message;
import java.util.ArrayList;

public class MessageList extends ArrayList<String> {
    public ArrayList<String> msg;

    public MessageList(){
        msg = new ArrayList<String>();
        msg.add("hello");
        msg.add("dear");
        msg.add("body");
    }

    @Override
    public String toString(){
        String str = "";
        for(String msg: this)
            str  +=  msg;

        return str;
    }
}

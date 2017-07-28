/*
 * Created By : anyei
 * Created Date: 7/28/2017
 */ 
public class CustomPageMessages {
    static List<CustomPageMessage> msgs {get;set;}
    static{
        msgs = new List<CustomPageMessage>();
    }
    public List<CustomPageMessage> messages {get{return msgs;}}
    public static void addMessage(CustomPageMessage message){
       msgs.add(message);
    }
    public static void addMessages(List<CustomPageMessage> messages){
        msgs.addAll(messages);
    }    

}
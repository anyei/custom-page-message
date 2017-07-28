/*
 * Created By : anyei
 * Created Date: 7/28/2017
 * GitHub : https://github.com/anyei/custom-page-message 
 * Unit Test : CustomPageMessagesTest
 */ 
public class CustomPageMessages {
    public static List<CustomPageMessage> msgs {get;set;}
    static{
        msgs = new List<CustomPageMessage>();
    }
    public static void addMessage(CustomPageMessage message){
       msgs.add(message);
    }
    public static void addMessages(List<CustomPageMessage> messages){
        msgs.addAll(messages);
    }
    public static integer getSize(){
        return msgs.size();
    }    

}
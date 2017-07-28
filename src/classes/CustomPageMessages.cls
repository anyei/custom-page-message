/*
 * Created By : anyei
 * Created Date: 7/28/2017
 */ 
public class CustomPageMessages {
    public static List<CustomPageMessage> messages {get;set;}
    static{
        messages = new List<CustomPageMessage>();
    }
    
    public static void addMessage(CustomPageMessage message){
       if(messages != null) messages.add(message);
    }
    public static void addMessages(List<CustomPageMessage> messages){
        if(CustomPageMessages.messages != null) CustomPageMessages.messages.addAll(messages);
    }    

}
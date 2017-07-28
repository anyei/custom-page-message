/*
 * Created By : anyei
 * Created Date: 7/28/2017
 * GitHub : https://github.com/anyei/custom-page-message 
 * Unit Test : CustomPageMessagesTest
 */
public class CustomPageMessage {
    public string message {get;set;}
    public string title {get;set;}
    public string icon {get;set;}
    public boolean closeButton {get;set;}
    public string messageType {get;set;}//alert, modal, toast
    public string theme {get;set;}//offline, warning, error, success
    
    public CustomPageMessage(){
        messageType = 'alert';
        icon='success';
        theme = 'success';
    }
    public CustomPageMessage(string message){
        this();
        this.message = message;
    }
    
    public CustomPageMessage(string message, string title, string icon, boolean closeButton, string messageType, string theme){
        this.message = message;
        this.title = title;
        this.icon = icon;
        this.closeButton = closeButton;
        this.messageType = messageType;
        this.theme = theme;
            
    }
    public CustomPageMessage(string message, string icon, string theme){
        this();
        this.message = message;
        this.icon = icon;
        this.theme = theme;
    }
    public CustomPageMessage(string message, string icon){
        this();
        this.message=message;
        this.icon = icon;
    }
     public CustomPageMessage(string message, string icon, boolean closeButton){
        this();
        this.message=message;
        this.icon = icon;
         this.closeButton = closeButton;
    }
     public CustomPageMessage(string message, boolean closeButton){
        this();
        this.message=message;
        this.closeButton = closeButton;
    }
    public CustomPageMessage(string message, string title, boolean closeButton, string messageType){
        this();
        this.message = message;
        this.title = title;
        this.closeButton = closeButton;
        this.messageType = messageType;
    }
        

}
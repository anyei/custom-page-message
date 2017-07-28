/*
* Created By : anyei
* Created Date : 7/28/2017
* Tested Classes : CustomPageMessages, CustomPageMessage
* GitHub : https://github.com/anyei/custom-page-message * 
*/ 
@isTest
public class CustomPageMessagesTest {
    
    @istest static void addMessage(){
        system.assertEquals(0,CustomPageMessages.messages.size());
        
        CustomPageMessage message = new CustomPageMessage('Testing environment 1', 'testing', 'info', true, 'alert', 'warning');
        CustomPageMessages.addMessage(message);
        
        CustomPageMessage message2 = new CustomPageMessage('Testing environment 2','info', 'warning');
        CustomPageMessages.addMessage(message2);
        
        CustomPageMessage message3 = new CustomPageMessage('Testing environment 3','info');
        CustomPageMessages.addMessage(message3);
        
        CustomPageMessage message4 = new CustomPageMessage('Testing environment 4','error', true);
        CustomPageMessages.addMessage(message4);
        
        CustomPageMessage message5 = new CustomPageMessage('Testing environment 5', true);
        CustomPageMessages.addMessage(message5);
        
        CustomPageMessage message6 = new CustomPageMessage('Testing environment 6', 'testing', true, 'alert');
        CustomPageMessages.addMessage(message6);
        
        
        system.assertEquals(6,CustomPageMessages.messages.size());
    }
    
    @istest static void addMessages(){
        
        system.assertEquals(0, CustomPageMessages.messages.size());
        
        List<CustomPageMessage> messages = new List<CustomPageMessage>{
            new CustomPageMessage('Testing environment 1', 'testing', 'info', true, 'alert', 'warning'),
                new CustomPageMessage('Testing environment 2','info', 'warning'),
                new CustomPageMessage('Testing environment 3','info')
        };
                    
        CustomPageMessages.addMessages(messages);
        
        system.assertEquals(3, CustomPageMessages.messages.size());
    }
}
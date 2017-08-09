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
    public string sprite {get;set;}
    public string style {get;set;}
    public boolean closeButton {get;set;}
    public string messageType {get;set;}//alert, modal, toast
    public string theme {get;set;}//offline, warning, error, success
    public string uniqueId {get;set;}
    public boolean okButtonp {get;set;}
    public boolean cancelButtonp {get;set;}
    public string okButtonLabelp {get;set;}
    public string cancelButtonLabelp {get;set;}
    public ApexPages.Action OkButtonActionp {get;set;}
    public ApexPages.Action CancelButtonActionp {get;set; }
    public boolean renderButtonsFormp {get;set; }
    
    public Component.Apex.OutputPanel getButtonsPanelAction(){

        Component.Apex.OutPutPanel bp = new Component.Apex.OutputPanel();
        Component.Apex.Form f = new Component.Apex.Form();
        if(renderButtonsFormp == true)bp.childComponents.add(f);
        bp.rendered=okButtonp || cancelButtonp;
        bp.layout='none';
        List<Component.Apex.CommandButton> buttonsToShow = new List<Component.Apex.CommandButton>();
        if(OkButtonp == true){
            Component.Apex.CommandButton cbOk = new Component.Apex.CommandButton();
            cbOk.styleClass='slds-button slds-button--brand';
            cbOk.action = OkButtonActionp;
            cbOk.value=OkButtonLabelp;
            buttonsToShow.add(cbOk);
        }
        if(CancelButtonp == true){
             Component.Apex.CommandButton cbCancel = new Component.Apex.CommandButton();
            cbCancel.styleClass='slds-button slds-button--neutral';
            cbCancel.action = CancelButtonActionp;
            cbCancel.value=CancelButtonLabelp;
            buttonsToShow.add(cbCancel);
        }
        
        for(integer i=(buttonsToShow.size() - 1);i >=0;i--){
            if(renderButtonsFormp == true) f.childComponents.add(buttonsToShow[i]); else bp.childComponents.add(buttonsToShow[i]);
        }
        return bp;
    }
    public CustomPageMessage(){
        messageType = 'alert';
        icon='success';
        theme = 'success';
        sprite='utility';
        closeButton=true;
        okButtonp=true;
        cancelButtonp=true;
        okBUttonLabelp='Okey';
        CancelButtonLabelp = 'Cancel';
        renderButtonsFormp = true;
        uniqueId = '_'+string.valueof(system.datetime.now().getTime());
    }
    public CustomPageMessage(string message){
        this();
        this.message = message;
    }
    
    public CustomPageMessage(string message, string title, string icon, boolean closeButton, string messageType, string theme){
        this();
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
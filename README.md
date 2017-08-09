# custom-page-message

This is a simple way to put messages into visualforce pages both declarative and from apex. The interesting thing about this is that it uses slds alert/toast/modal components and not the standard page messages layout and css.


### Install Components into your org

##### Deploy to Salesforce Button

<a href="https://githubsfdeploy.herokuapp.com?owner=anyei&repo=custom-page-message">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>



##### Manual Install

You may manually create the classes and visualforce components within your org with the content of this repository CustomPageMessage, CustomPageMessages classes and CustomPageMessage and CustomPageMessages visualforce compoonents, but just use the button above its gonna be easier. 


## Usage

##### Declarative

Just create an instance of the component and set some properties, see the following example:

```html
<apex:page >

<c:CustomPageMessage message="the error"
                         icon="error" />
                         
<c:CustomPageMessage message="File attached" sprite="doctype"
                         icon="attachment" />


</apex:page>
```


##### From Apex

First, create an instance of the container to display all the messages in the visualforce markup.

```html
<apex:page controller="dummyController" action="{!addMessage}" >

<c:CustomPageMessages></c:CustomPageMessages>

</apex:page>
```

Then from apex, just invoke a method to add a CustomPageMessage instance into the list of messages to display in the visualforce page.

```java
public class dummyController {
    
    public PageReference addMessage(){

        CustomPageMessages.addMessage(new CustomPageMessage('Testing message','answer'));
       
        return null;
    }

}
```

### Attributes table

| name               | data type        | required | default | description |
|--------------------|------------------|----------|---------|-------------|
| title              | string           | false    |         |The title to be added for those types of messages where theres a title.|
| message            | string           | false    |         |The message content.|
| icon               | string           | false    | success |The message icon, it can be one of the ones available in slds sprites. Available values are in this link https://www.lightningdesignsystem.com/icons/ |
| closeButton        | boolean          | false    | true    |Hide or show the close button for those types of message where there's a close button.|
| rendered           | boolean          | false    | true    |Hide or show the entire component.|
| messageType        | string           | false    | alert   |The message type to apply. Available values are alert, simple, toast, modal, modal2.|
| theme              | string           | false    | info    |The slds theme to apply. Available values are success, info, error, warning.|
| OkButtonLabel      | string           | false    | Okey    |The label of the ok button for those type of message where there is an ok button.|
| CancelButtonLabel  | string           | false    | Cancel  |The label of the cancel button for those types of message where there is a cancel button.|
| OkButton           | boolean          | false    | true    |Hide or show the ok button for those type of message where there is an ok button.|
| CancelButton       | boolean          | false    | true    |Hide or show the cancel button for those type of messages where there is a cancel button.|
| OkButtonAction     | ApexPages.Action | false    |         |The controller method to invoke when users click on the ok button.|
| CancelButtonAction | ApexPages.Action | false    |         |The controller method to invoke when users click on the cancel button.|
| renderButtonsForm  |boolean           | false    | false   |Renders a <apex:form> for the OkButton and the CancelButton. Set this to true if you put the CustomPageMessage or CustomPageMessages component outside of <apex:form>.|
| sprite             | string           | false    | utility |The sprite where the icon you want to use is. Available values are in this link https://www.lightningdesignsystem.com/icons/ but i'm going to resume it for you: action, custom, standard, utility and doctype.|

### Important Note

Unfurtunatelly, adding a CustomPageMessage from the controller's constructor does not work, this is because the instance of the instance of <c:CustomPageMessages /> is created by visualforce before calling the constructor of the visualforce controller.


### TODO
Add more message types, so far the message types we have are simple, alert, toast, modal, modal2.

### Issues
Please refer to the <a href="https://github.com/anyei/custom-page-message/issues">Issues</a> section.





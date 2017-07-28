# custom-page-message

This is a simple way to put messages into visualforce pages both declarative and from apex. The interesting thing about this is that it uses slds alert/toast/modal components and not the standard page messages layout and css.


### Install Components into your org

##### Deploy to Salesforce Button

<a href="https://githubsfdeploy.herokuapp.com?owner=anyei&repo=custom-page-message">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Usage

##### Declarative

Just create an instance of the component and set some properties, see the following example:

```html
<apex:page >

<c:CustomPageMessage message="the error"
                         icon="error" />


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

}```

### Important Note

Unfurtunatelly, adding a CustomPageMessage from the controller's constructor does not work, this is because the instance of the instance of <c:CustomPageMessages /> is created by visualforce before calling the constructor of the visualforce controller.


##### Manual Install

You may manually create the classes and visualforce components within your org with the content of this repository CustomPageMessage, CustomPageMessages classes and CustomPageMessage and CustomPageMessages visualforce compoonents, but just use the button above its gonna be easier. 


### Issues
Please refer to the <a href="https://github.com/anyei/custom-page-message/issues">Issues</a> section.





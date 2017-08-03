/*
Created By :anyei
Created Date: 8/3/2017
GitHub: https://github.com/anyei/custom-page-message
*/
function closeMeJs(suffix)
    {
        
        var target= document.querySelectorAll('.cpmalert.'+suffix);
        if(target.length > 0) for(var i =0;i<target.length;i++) target[i].setAttribute('style','display:none;');
        
        var b= document.querySelectorAll('.slds-backdrop.'+suffix);
        if(b.length > 0) for(var i =0;i<b.length;i++) b[i].setAttribute('class','');
        
        
    }
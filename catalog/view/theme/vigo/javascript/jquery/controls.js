if("undefined"==typeof Effect)throw"controls.js requires including script.aculo.us' effects.js library";var Autocompleter={};Autocompleter.Base=Class.create({baseInitialize:function(t,e,i){t=$(t),this.element=t,this.update=$(e),this.hasFocus=!1,this.changed=!1,this.active=!1,this.index=0,this.entryCount=0,this.oldElementValue=this.element.value,this.setOptions?this.setOptions(i):this.options=i||{},this.options.paramName=this.options.paramName||this.element.name,this.options.tokens=this.options.tokens||[],this.options.frequency=this.options.frequency||.4,this.options.minChars=this.options.minChars||1,this.options.onShow=this.options.onShow||function(t,e){e.style.position&&"absolute"!=e.style.position||(e.style.position="absolute",Position.clone(t,e,{setHeight:!1,offsetTop:t.offsetHeight})),Effect.Appear(e,{duration:.15})},this.options.onHide=this.options.onHide||function(t,e){new Effect.Fade(e,{duration:.15})},"string"==typeof this.options.tokens&&(this.options.tokens=new Array(this.options.tokens)),this.options.tokens.include("\n")||this.options.tokens.push("\n"),this.observer=null,this.element.setAttribute("autocomplete","off"),Element.hide(this.update),Event.observe(this.element,"blur",this.onBlur.bindAsEventListener(this)),Event.observe(this.element,"keydown",this.onKeyPress.bindAsEventListener(this))},show:function(){"none"==Element.getStyle(this.update,"display")&&this.options.onShow(this.element,this.update),!this.iefix&&Prototype.Browser.IE&&"absolute"==Element.getStyle(this.update,"position")&&(new Insertion.After(this.update,'<iframe id="'+this.update.id+'_iefix" style="display:none;position:absolute;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0);" src="javascript:false;" frameborder="0" scrolling="no"></iframe>'),this.iefix=$(this.update.id+"_iefix")),this.iefix&&setTimeout(this.fixIEOverlapping.bind(this),50)},fixIEOverlapping:function(){Position.clone(this.update,this.iefix,{setTop:!this.update.style.height}),this.iefix.style.zIndex=1,this.update.style.zIndex=2,Element.show(this.iefix)},hide:function(){this.stopIndicator(),"none"!=Element.getStyle(this.update,"display")&&this.options.onHide(this.element,this.update),this.iefix&&Element.hide(this.iefix)},startIndicator:function(){this.options.indicator&&Element.show(this.options.indicator)},stopIndicator:function(){this.options.indicator&&Element.hide(this.options.indicator)},onKeyPress:function(t){if(this.active)switch(t.keyCode){case Event.KEY_TAB:case Event.KEY_RETURN:this.selectEntry(),Event.stop(t);case Event.KEY_ESC:return this.hide(),this.active=!1,void Event.stop(t);case Event.KEY_LEFT:case Event.KEY_RIGHT:return;case Event.KEY_UP:return this.markPrevious(),this.render(),void Event.stop(t);case Event.KEY_DOWN:return this.markNext(),this.render(),void Event.stop(t)}else if(t.keyCode==Event.KEY_TAB||t.keyCode==Event.KEY_RETURN||Prototype.Browser.WebKit>0&&0==t.keyCode)return;this.changed=!0,this.hasFocus=!0,this.observer&&clearTimeout(this.observer),this.observer=setTimeout(this.onObserverEvent.bind(this),1e3*this.options.frequency)},activate:function(){this.changed=!1,this.hasFocus=!0,this.getUpdatedChoices()},onHover:function(t){var e=Event.findElement(t,"LI");this.index!=e.autocompleteIndex&&(this.index=e.autocompleteIndex,this.render()),Event.stop(t)},onClick:function(t){var e=Event.findElement(t,"LI");this.index=e.autocompleteIndex,this.selectEntry(),this.hide()},onBlur:function(t){setTimeout(this.hide.bind(this),250),this.hasFocus=!1,this.active=!1},render:function(){if(this.entryCount>0){for(var t=0;t<this.entryCount;t++)this.index==t?Element.addClassName(this.getEntry(t),"selected"):Element.removeClassName(this.getEntry(t),"selected");this.hasFocus&&(this.show(),this.active=!0)}else this.active=!1,this.hide()},markPrevious:function(){this.index>0?this.index--:this.index=this.entryCount-1},markNext:function(){this.index<this.entryCount-1?this.index++:this.index=0,this.getEntry(this.index).scrollIntoView(!1)},getEntry:function(t){return this.update.firstChild.childNodes[t]},getCurrentEntry:function(){return this.getEntry(this.index)},selectEntry:function(){this.active=!1,this.updateElement(this.getCurrentEntry())},updateElement:function(t){if(this.options.updateElement)return void this.options.updateElement(t);var e="";if(this.options.select){var i=$(t).select("."+this.options.select)||[];i.length>0&&(e=Element.collectTextNodes(i[0],this.options.select))}else e=Element.collectTextNodesIgnoreClass(t,"informal");var o=this.getTokenBounds();if(o[0]!=-1){var n=this.element.value.substr(0,o[0]),s=this.element.value.substr(o[0]).match(/^\s+/);s&&(n+=s[0]),this.element.value=n+e+this.element.value.substr(o[1])}else this.element.value=e;this.oldElementValue=this.element.value,this.element.focus(),this.options.afterUpdateElement&&this.options.afterUpdateElement(this.element,t)},updateChoices:function(t){if(!this.changed&&this.hasFocus){if(this.update.innerHTML=t,Element.cleanWhitespace(this.update),Element.cleanWhitespace(this.update.down()),this.update.firstChild&&this.update.down().childNodes){this.entryCount=this.update.down().childNodes.length;for(var e=0;e<this.entryCount;e++){var i=this.getEntry(e);i.autocompleteIndex=e,this.addObservers(i)}}else this.entryCount=0;this.stopIndicator(),this.index=0,1==this.entryCount&&this.options.autoSelect?(this.selectEntry(),this.hide()):this.render()}},addObservers:function(t){Event.observe(t,"mouseover",this.onHover.bindAsEventListener(this)),Event.observe(t,"click",this.onClick.bindAsEventListener(this))},onObserverEvent:function(){this.changed=!1,this.tokenBounds=null,this.getToken().length>=this.options.minChars?this.getUpdatedChoices():(this.active=!1,this.hide()),this.oldElementValue=this.element.value},getToken:function(){var t=this.getTokenBounds();return this.element.value.substring(t[0],t[1]).strip()},getTokenBounds:function(){if(null!=this.tokenBounds)return this.tokenBounds;var t=this.element.value;if(t.strip().empty())return[-1,0];for(var e,i=arguments.callee.getFirstDifferencePos(t,this.oldElementValue),o=i==this.oldElementValue.length?1:0,n=-1,s=t.length,r=0,l=this.options.tokens.length;r<l;++r)e=t.lastIndexOf(this.options.tokens[r],i+o-1),e>n&&(n=e),e=t.indexOf(this.options.tokens[r],i+o),-1!=e&&e<s&&(s=e);return this.tokenBounds=[n+1,s]}}),Autocompleter.Base.prototype.getTokenBounds.getFirstDifferencePos=function(t,e){for(var i=Math.min(t.length,e.length),o=0;o<i;++o)if(t[o]!=e[o])return o;return i},Ajax.Autocompleter=Class.create(Autocompleter.Base,{initialize:function(t,e,i,o){this.baseInitialize(t,e,o),this.options.asynchronous=!0,this.options.onComplete=this.onComplete.bind(this),this.options.defaultParams=this.options.parameters||null,this.url=i},getUpdatedChoices:function(){this.startIndicator();var t=encodeURIComponent(this.options.paramName)+"="+encodeURIComponent(this.getToken());this.options.parameters=this.options.callback?this.options.callback(this.element,t):t,this.options.defaultParams&&(this.options.parameters+="&"+this.options.defaultParams),new Ajax.Request(this.url,this.options)},onComplete:function(t){this.updateChoices(t.responseText)}}),Autocompleter.Local=Class.create(Autocompleter.Base,{initialize:function(t,e,i,o){this.baseInitialize(t,e,o),this.options.array=i},getUpdatedChoices:function(){this.updateChoices(this.options.selector(this))},setOptions:function(t){this.options=Object.extend({choices:10,partialSearch:!0,partialChars:2,ignoreCase:!0,fullSearch:!1,selector:function(t){for(var e=[],i=[],o=t.getToken(),n=0;n<t.options.array.length&&e.length<t.options.choices;n++)for(var s=t.options.array[n],r=t.options.ignoreCase?s.toLowerCase().indexOf(o.toLowerCase()):s.indexOf(o);r!=-1;){if(0==r&&s.length!=o.length){e.push("<li><strong>"+s.substr(0,o.length)+"</strong>"+s.substr(o.length)+"</li>");break}if(o.length>=t.options.partialChars&&t.options.partialSearch&&r!=-1&&(t.options.fullSearch||/\s/.test(s.substr(r-1,1)))){i.push("<li>"+s.substr(0,r)+"<strong>"+s.substr(r,o.length)+"</strong>"+s.substr(r+o.length)+"</li>");break}r=t.options.ignoreCase?s.toLowerCase().indexOf(o.toLowerCase(),r+1):s.indexOf(o,r+1)}return i.length&&(e=e.concat(i.slice(0,t.options.choices-e.length))),"<ul>"+e.join("")+"</ul>"}},t||{})}}),Field.scrollFreeActivate=function(t){setTimeout(function(){Field.activate(t)},1)},Ajax.InPlaceEditor=Class.create({initialize:function(t,e,i){this.url=e,this.element=t=$(t),this.prepareOptions(),this._controls={},arguments.callee.dealWithDeprecatedOptions(i),Object.extend(this.options,i||{}),!this.options.formId&&this.element.id&&(this.options.formId=this.element.id+"-inplaceeditor",$(this.options.formId)&&(this.options.formId="")),this.options.externalControl&&(this.options.externalControl=$(this.options.externalControl)),this.options.externalControl||(this.options.externalControlOnly=!1),this._originalBackground=this.element.getStyle("background-color")||"transparent",this.element.title=this.options.clickToEditText,this._boundCancelHandler=this.handleFormCancellation.bind(this),this._boundComplete=(this.options.onComplete||Prototype.emptyFunction).bind(this),this._boundFailureHandler=this.handleAJAXFailure.bind(this),this._boundSubmitHandler=this.handleFormSubmission.bind(this),this._boundWrapperHandler=this.wrapUp.bind(this),this.registerListeners()},checkForEscapeOrReturn:function(t){!this._editing||t.ctrlKey||t.altKey||t.shiftKey||(Event.KEY_ESC==t.keyCode?this.handleFormCancellation(t):Event.KEY_RETURN==t.keyCode&&this.handleFormSubmission(t))},createControl:function(t,e,i){var o=this.options[t+"Control"],n=this.options[t+"Text"];if("button"==o){var s=document.createElement("input");s.type="submit",s.value=n,s.className="editor_"+t+"_button","cancel"==t&&(s.onclick=this._boundCancelHandler),this._form.appendChild(s),this._controls[t]=s}else if("link"==o){var r=document.createElement("a");r.href="#",r.appendChild(document.createTextNode(n)),r.onclick="cancel"==t?this._boundCancelHandler:this._boundSubmitHandler,r.className="editor_"+t+"_link",i&&(r.className+=" "+i),this._form.appendChild(r),this._controls[t]=r}},createEditField:function(){var t,e=this.options.loadTextURL?this.options.loadingText:this.getText();if(1>=this.options.rows&&!/\r|\n/.test(this.getText())){t=document.createElement("input"),t.type="text";var i=this.options.size||this.options.cols||0;0<i&&(t.size=i)}else t=document.createElement("textarea"),t.rows=1>=this.options.rows?this.options.autoRows:this.options.rows,t.cols=this.options.cols||40;t.name=this.options.paramName,t.value=e,t.className="editor_field",this.options.submitOnBlur&&(t.onblur=this._boundSubmitHandler),this._controls.editor=t,this.options.loadTextURL&&this.loadExternalText(),this._form.appendChild(this._controls.editor)},createForm:function(){function t(t,i){var o=e.options["text"+t+"Controls"];o&&i!==!1&&e._form.appendChild(document.createTextNode(o))}var e=this;this._form=$(document.createElement("form")),this._form.id=this.options.formId,this._form.addClassName(this.options.formClassName),this._form.onsubmit=this._boundSubmitHandler,this.createEditField(),"textarea"==this._controls.editor.tagName.toLowerCase()&&this._form.appendChild(document.createElement("br")),this.options.onFormCustomization&&this.options.onFormCustomization(this,this._form),t("Before",this.options.okControl||this.options.cancelControl),this.createControl("ok",this._boundSubmitHandler),t("Between",this.options.okControl&&this.options.cancelControl),this.createControl("cancel",this._boundCancelHandler,"editor_cancel"),t("After",this.options.okControl||this.options.cancelControl)},destroy:function(){this._oldInnerHTML&&(this.element.innerHTML=this._oldInnerHTML),this.leaveEditMode(),this.unregisterListeners()},enterEditMode:function(t){this._saving||this._editing||(this._editing=!0,this.triggerCallback("onEnterEditMode"),this.options.externalControl&&this.options.externalControl.hide(),this.element.hide(),this.createForm(),this.element.parentNode.insertBefore(this._form,this.element),this.options.loadTextURL||this.postProcessEditField(),t&&Event.stop(t))},enterHover:function(t){this.options.hoverClassName&&this.element.addClassName(this.options.hoverClassName),this._saving||this.triggerCallback("onEnterHover")},getText:function(){return this.element.innerHTML.unescapeHTML()},handleAJAXFailure:function(t){this.triggerCallback("onFailure",t),this._oldInnerHTML&&(this.element.innerHTML=this._oldInnerHTML,this._oldInnerHTML=null)},handleFormCancellation:function(t){this.wrapUp(),t&&Event.stop(t)},handleFormSubmission:function(t){var e=this._form,i=$F(this._controls.editor);this.prepareSubmission();var o=this.options.callback(e,i)||"";if(Object.isString(o)&&(o=o.toQueryParams()),o.editorId=this.element.id,this.options.htmlResponse){var n=Object.extend({evalScripts:!0},this.options.ajaxOptions);Object.extend(n,{parameters:o,onComplete:this._boundWrapperHandler,onFailure:this._boundFailureHandler}),new Ajax.Updater({success:this.element},this.url,n)}else{var n=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(n,{parameters:o,onComplete:this._boundWrapperHandler,onFailure:this._boundFailureHandler}),new Ajax.Request(this.url,n)}t&&Event.stop(t)},leaveEditMode:function(){this.element.removeClassName(this.options.savingClassName),this.removeForm(),this.leaveHover(),this.element.style.backgroundColor=this._originalBackground,this.element.show(),this.options.externalControl&&this.options.externalControl.show(),this._saving=!1,this._editing=!1,this._oldInnerHTML=null,this.triggerCallback("onLeaveEditMode")},leaveHover:function(t){this.options.hoverClassName&&this.element.removeClassName(this.options.hoverClassName),this._saving||this.triggerCallback("onLeaveHover")},loadExternalText:function(){this._form.addClassName(this.options.loadingClassName),this._controls.editor.disabled=!0;var t=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(t,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(t){this._form.removeClassName(this.options.loadingClassName);var e=t.responseText;this.options.stripLoadedTextTags&&(e=e.stripTags()),this._controls.editor.value=e,this._controls.editor.disabled=!1,this.postProcessEditField()}.bind(this),onFailure:this._boundFailureHandler}),new Ajax.Request(this.options.loadTextURL,t)},postProcessEditField:function(){var t=this.options.fieldPostCreation;t&&$(this._controls.editor)["focus"==t?"focus":"activate"]()},prepareOptions:function(){this.options=Object.clone(Ajax.InPlaceEditor.DefaultOptions),Object.extend(this.options,Ajax.InPlaceEditor.DefaultCallbacks),[this._extraDefaultOptions].flatten().compact().each(function(t){Object.extend(this.options,t)}.bind(this))},prepareSubmission:function(){this._saving=!0,this.removeForm(),this.leaveHover(),this.showSaving()},registerListeners:function(){this._listeners={};var t;$H(Ajax.InPlaceEditor.Listeners).each(function(e){t=this[e.value].bind(this),this._listeners[e.key]=t,this.options.externalControlOnly||this.element.observe(e.key,t),this.options.externalControl&&this.options.externalControl.observe(e.key,t)}.bind(this))},removeForm:function(){this._form&&(this._form.remove(),this._form=null,this._controls={})},showSaving:function(){this._oldInnerHTML=this.element.innerHTML,this.element.innerHTML=this.options.savingText,this.element.addClassName(this.options.savingClassName),this.element.style.backgroundColor=this._originalBackground,this.element.show()},triggerCallback:function(t,e){"function"==typeof this.options[t]&&this.options[t](this,e)},unregisterListeners:function(){$H(this._listeners).each(function(t){this.options.externalControlOnly||this.element.stopObserving(t.key,t.value),this.options.externalControl&&this.options.externalControl.stopObserving(t.key,t.value)}.bind(this))},wrapUp:function(t){this.leaveEditMode(),this._boundComplete(t,this.element)}}),Object.extend(Ajax.InPlaceEditor.prototype,{dispose:Ajax.InPlaceEditor.prototype.destroy}),Ajax.InPlaceCollectionEditor=Class.create(Ajax.InPlaceEditor,{initialize:function(t,e,i,o){this._extraDefaultOptions=Ajax.InPlaceCollectionEditor.DefaultOptions,t(e,i,o)},createEditField:function(){var t=document.createElement("select");t.name=this.options.paramName,t.size=1,this._controls.editor=t,this._collection=this.options.collection||[],this.options.loadCollectionURL?this.loadCollection():this.checkForExternalText(),this._form.appendChild(this._controls.editor)},loadCollection:function(){this._form.addClassName(this.options.loadingClassName),this.showLoadingText(this.options.loadingCollectionText);var options=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(options,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(transport){var js=transport.responseText.strip();if(!/^\[.*\]$/.test(js))throw"Server returned an invalid collection representation.";this._collection=eval(js),this.checkForExternalText()}.bind(this),onFailure:this.onFailure}),new Ajax.Request(this.options.loadCollectionURL,options)},showLoadingText:function(t){this._controls.editor.disabled=!0;var e=this._controls.editor.firstChild;e||(e=document.createElement("option"),e.value="",this._controls.editor.appendChild(e),e.selected=!0),e.update((t||"").stripScripts().stripTags())},checkForExternalText:function(){this._text=this.getText(),this.options.loadTextURL?this.loadExternalText():this.buildOptionList()},loadExternalText:function(){this.showLoadingText(this.options.loadingText);var t=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(t,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(t){this._text=t.responseText.strip(),this.buildOptionList()}.bind(this),onFailure:this.onFailure}),new Ajax.Request(this.options.loadTextURL,t)},buildOptionList:function(){this._form.removeClassName(this.options.loadingClassName),this._collection=this._collection.map(function(t){return 2===t.length?t:[t,t].flatten()});var t="value"in this.options?this.options.value:this._text,e=this._collection.any(function(e){return e[0]==t}.bind(this));this._controls.editor.update("");var i;this._collection.each(function(o,n){i=document.createElement("option"),i.value=o[0],i.selected=e?o[0]==t:0==n,i.appendChild(document.createTextNode(o[1])),this._controls.editor.appendChild(i)}.bind(this)),this._controls.editor.disabled=!1,Field.scrollFreeActivate(this._controls.editor)}}),Ajax.InPlaceEditor.prototype.initialize.dealWithDeprecatedOptions=function(t){function e(e,i){e in t||void 0===i||(t[e]=i)}t&&(e("cancelControl",t.cancelLink?"link":t.cancelButton?"button":t.cancelLink==t.cancelButton!=0&&void 0),e("okControl",t.okLink?"link":t.okButton?"button":t.okLink==t.okButton!=0&&void 0),e("highlightColor",t.highlightcolor),e("highlightEndColor",t.highlightendcolor))},Object.extend(Ajax.InPlaceEditor,{DefaultOptions:{ajaxOptions:{},autoRows:3,cancelControl:"link",cancelText:"cancel",clickToEditText:"Click to edit",externalControl:null,externalControlOnly:!1,fieldPostCreation:"activate",formClassName:"inplaceeditor-form",formId:null,highlightColor:"#ffff99",highlightEndColor:"#ffffff",hoverClassName:"",htmlResponse:!0,loadingClassName:"inplaceeditor-loading",loadingText:"Loading...",okControl:"button",okText:"ok",paramName:"value",rows:1,savingClassName:"inplaceeditor-saving",savingText:"Saving...",size:0,stripLoadedTextTags:!1,submitOnBlur:!1,textAfterControls:"",textBeforeControls:"",textBetweenControls:""},DefaultCallbacks:{callback:function(t){return Form.serialize(t)},onComplete:function(t,e){new Effect.Highlight(e,{startcolor:this.options.highlightColor,keepBackgroundImage:!0})},onEnterEditMode:null,onEnterHover:function(t){t.element.style.backgroundColor=t.options.highlightColor,t._effect&&t._effect.cancel()},onFailure:function(t,e){alert("Error communication with the server: "+t.responseText.stripTags())},onFormCustomization:null,onLeaveEditMode:null,onLeaveHover:function(t){t._effect=new Effect.Highlight(t.element,{startcolor:t.options.highlightColor,endcolor:t.options.highlightEndColor,restorecolor:t._originalBackground,keepBackgroundImage:!0})}},Listeners:{click:"enterEditMode",keydown:"checkForEscapeOrReturn",mouseover:"enterHover",mouseout:"leaveHover"}}),Ajax.InPlaceCollectionEditor.DefaultOptions={loadingCollectionText:"Loading options..."},Form.Element.DelayedObserver=Class.create({initialize:function(t,e,i){this.delay=e||.5,this.element=$(t),this.callback=i,this.timer=null,this.lastValue=$F(this.element),Event.observe(this.element,"keyup",this.delayedListener.bindAsEventListener(this))},delayedListener:function(t){this.lastValue!=$F(this.element)&&(this.timer&&clearTimeout(this.timer),this.timer=setTimeout(this.onTimerEvent.bind(this),1e3*this.delay),this.lastValue=$F(this.element))},onTimerEvent:function(){this.timer=null,this.callback(this.element,$F(this.element))}});
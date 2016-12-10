if(!Control)var Control={};Control.Slider=Class.create({initialize:function(t,s,i){var e=this;Object.isArray(t)?this.handles=t.collect(function(t){return $(t)}):this.handles=[$(t)],this.track=$(s),this.options=i||{},this.axis=this.options.axis||"horizontal",this.increment=this.options.increment||1,this.step=parseInt(this.options.step||"1"),this.range=this.options.range||$R(0,1),this.value=0,this.values=this.handles.map(function(){return 0}),this.spans=!!this.options.spans&&this.options.spans.map(function(t){return $(t)}),this.options.startSpan=$(this.options.startSpan||null),this.options.endSpan=$(this.options.endSpan||null),this.restricted=this.options.restricted||!1,this.maximum=this.options.maximum||this.range.end,this.minimum=this.options.minimum||this.range.start,this.alignX=parseInt(this.options.alignX||"0"),this.alignY=parseInt(this.options.alignY||"0"),this.trackLength=this.maximumOffset()-this.minimumOffset(),this.handleLength=this.isVertical()?0!=this.handles[0].offsetHeight?this.handles[0].offsetHeight:this.handles[0].style.height.replace(/px$/,""):0!=this.handles[0].offsetWidth?this.handles[0].offsetWidth:this.handles[0].style.width.replace(/px$/,""),this.active=!1,this.dragging=!1,this.disabled=!1,this.options.disabled&&this.setDisabled(),this.allowedValues=!!this.options.values&&this.options.values.sortBy(Prototype.K),this.allowedValues&&(this.minimum=this.allowedValues.min(),this.maximum=this.allowedValues.max()),this.eventMouseDown=this.startDrag.bindAsEventListener(this),this.eventMouseUp=this.endDrag.bindAsEventListener(this),this.eventMouseMove=this.update.bindAsEventListener(this),this.handles.each(function(t,s){s=e.handles.length-1-s,e.setValue(parseFloat((Object.isArray(e.options.sliderValue)?e.options.sliderValue[s]:e.options.sliderValue)||e.range.start),s),t.makePositioned().observe("mousedown",e.eventMouseDown)}),this.track.observe("mousedown",this.eventMouseDown),document.observe("mouseup",this.eventMouseUp),$(this.track.parentNode.parentNode).observe("mousemove",this.eventMouseMove),this.initialized=!0},dispose:function(){var t=this;Event.stopObserving(this.track,"mousedown",this.eventMouseDown),Event.stopObserving(document,"mouseup",this.eventMouseUp),Event.stopObserving(this.track.parentNode.parentNode,"mousemove",this.eventMouseMove),this.handles.each(function(s){Event.stopObserving(s,"mousedown",t.eventMouseDown)})},setDisabled:function(){this.disabled=!0,this.track.parentNode.className=this.track.parentNode.className+" disabled"},setEnabled:function(){this.disabled=!1},getNearestValue:function(t){if(this.allowedValues){if(t>=this.allowedValues.max())return this.allowedValues.max();if(t<=this.allowedValues.min())return this.allowedValues.min();var s=Math.abs(this.allowedValues[0]-t),i=this.allowedValues[0];return this.allowedValues.each(function(e){var n=Math.abs(e-t);n<=s&&(i=e,s=n)}),i}return t>this.range.end?this.range.end:t<this.range.start?this.range.start:t},setValue:function(t,s){this.active||(this.activeHandleIdx=s||0,this.activeHandle=this.handles[this.activeHandleIdx],this.updateStyles()),s=s||this.activeHandleIdx||0,this.initialized&&this.restricted&&(s>0&&t<this.values[s-1]&&(t=this.values[s-1]),s<this.handles.length-1&&t>this.values[s+1]&&(t=this.values[s+1])),t=this.getNearestValue(t),this.values[s]=t,this.value=this.values[0],this.handles[s].style[this.isVertical()?"top":"left"]=this.translateToPx(t),this.drawSpans(),this.dragging&&this.event||this.updateFinished()},setValueBy:function(t,s){this.setValue(this.values[s||this.activeHandleIdx||0]+t,s||this.activeHandleIdx||0)},translateToPx:function(t){return Math.round((this.trackLength-this.handleLength)/(this.range.end-this.range.start)*(t-this.range.start))+"px"},translateToValue:function(t){return t/(this.trackLength-this.handleLength)*(this.range.end-this.range.start)+this.range.start},getRange:function(t){var s=this.values.sortBy(Prototype.K);return t=t||0,$R(s[t],s[t+1])},minimumOffset:function(){return this.isVertical()?this.alignY:this.alignX},maximumOffset:function(){return this.isVertical()?(0!=this.track.offsetHeight?this.track.offsetHeight:this.track.style.height.replace(/px$/,""))-this.alignY:(0!=this.track.offsetWidth?this.track.offsetWidth:this.track.style.width.replace(/px$/,""))-this.alignX},isVertical:function(){return"vertical"==this.axis},drawSpans:function(){var t=this;this.spans&&$R(0,this.spans.length-1).each(function(s){t.setSpan(t.spans[s],t.getRange(s))}),this.options.startSpan&&this.setSpan(this.options.startSpan,$R(0,this.values.length>1?this.getRange(0).min():this.value)),this.options.endSpan&&this.setSpan(this.options.endSpan,$R(this.values.length>1?this.getRange(this.spans.length-1).max():this.value,this.maximum))},setSpan:function(t,s){this.isVertical()?(t.style.top=this.translateToPx(s.start),t.style.height=this.translateToPx(s.end-s.start+this.range.start)):(t.style.left=this.translateToPx(s.start),t.style.width=this.translateToPx(s.end-s.start+this.range.start))},updateStyles:function(){this.handles.each(function(t){Element.removeClassName(t,"selected")}),Element.addClassName(this.activeHandle,"selected")},startDrag:function(t){if(Event.isLeftClick(t)){if(!this.disabled){this.active=!0;var s=Event.element(t),i=[Event.pointerX(t),Event.pointerY(t)],e=s;if(e==this.track){var n=Position.cumulativeOffset(this.track);this.event=t,this.setValue(this.translateToValue((this.isVertical()?i[1]-n[1]:i[0]-n[0])-this.handleLength/2));var n=Position.cumulativeOffset(this.activeHandle);this.offsetX=i[0]-n[0],this.offsetY=i[1]-n[1]}else{for(;this.handles.indexOf(s)==-1&&s.parentNode;)s=s.parentNode;if(this.handles.indexOf(s)!=-1){this.activeHandle=s,this.activeHandleIdx=this.handles.indexOf(this.activeHandle),this.updateStyles();var n=Position.cumulativeOffset(this.activeHandle);this.offsetX=i[0]-n[0],this.offsetY=i[1]-n[1]}}}Event.stop(t)}},update:function(t){this.active&&(this.dragging||(this.dragging=!0),this.draw(t),Prototype.Browser.WebKit&&window.scrollBy(0,0),Event.stop(t))},draw:function(t){var s=[Event.pointerX(t),Event.pointerY(t)],i=Position.cumulativeOffset(this.track);s[0]-=this.offsetX+i[0],s[1]-=this.offsetY+i[1],this.event=t,this.setValue(this.translateToValue(this.isVertical()?s[1]:s[0])),this.initialized&&this.options.onSlide&&this.options.onSlide(this.values.length>1?this.values:this.value,this)},endDrag:function(t){this.active&&this.dragging&&(this.finishDrag(t,!0),Event.stop(t)),this.active=!1,this.dragging=!1},finishDrag:function(t,s){this.active=!1,this.dragging=!1,this.updateFinished()},updateFinished:function(){this.initialized&&this.options.onChange&&this.options.onChange(this.values.length>1?this.values:this.value,this),this.event=null}});
function slideChange(e){}function slideComplete(e){return!!e.slideChanged&&void effects(e)}function sliderLoaded(e){effects(e),slideChange(e)}function effects(e){var a,i,t,d,n,s=$(e.sliderObject).find(".sub-container"),c=$(e.currentSlideObject).find(".sub-container");s.find(".slider-desc, .blank-dark, .slider-desc-title, .slider-desc-content").attr("style",""),c.length>0&&(c.attr("class").indexOf("fromside")>0?(a={"margin-left":"-390px",opacity:1},i={"margin-right":"-370px",opacity:1},d={"margin-left":0,opacity:1},n={"margin-left":0,opacity:1},c.find(".slider-desc").delay(100).animate(a,1e3,"easeOutBounce"),c.find(".blank-dark").delay(1100).animate(i,1e3,"easeOutBounce"),c.find(".slider-desc-title").delay(2e3).animate(d,1e3,"easeOutCirc"),c.find(".slider-desc-content").delay(3e3).animate(n,1e3,"easeOutCirc")):c.attr("class").indexOf("fromtop")>0?(a={"margin-left":"-390px",opacity:1},i={"margin-top":0},t={opacity:1},d={opacity:1},n={opacity:1},c.find(".slider-desc").delay(100).animate(a,1e3,"easeOutExpo"),c.find(".slider-desc").delay(200).animate(i,1200,"easeOutExpo"),c.find(".blank-dark").delay(1500).animate(t,800,"easeOutSine"),c.find(".slider-desc-title").delay(2e3).animate(d,1e3,"easeOutCirc"),c.find(".slider-desc-content").delay(3e3).animate(n,1e3,"easeOutCirc")):(a={opacity:1},i={opacity:1},d={"margin-left":0,opacity:1},n={opacity:1},c.find(".slider-desc").delay(100).animate(a,1e3,"easeOutQuad"),c.find(".blank-dark").delay(1100).animate(i,1e3,"easeOutCubic"),c.find(".slider-desc-title").delay(2e3).animate(d,1e3,"easeOutCirc"),c.find(".slider-desc-content").delay(3e3).animate(n,1e3,"easeOutCirc")))}
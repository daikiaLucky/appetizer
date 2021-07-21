window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")

  const pullDownButton1 = document.getElementById("lists1")
  const pullDownParents1 = document.getElementById("pull-down1")

  const changeColor = document.getElementById("contact")

  const clickButton = document.getElementById("button")
  const downInnerBottom = document.getElementById("inner-bottom")

  const clickImage = document.getElementById("left-image")

  const clickVideo = document.getElementById("video")

  const clickClickRight = document.getElementById("click-right")
  const imageAppear = document.getElementById("image-appear")






  clickVideo.addEventListener('click', function () {
    clickVideo.classList.add("video-after")
    clickVideo.innerText = "";
    $('#video').css({
      'color':'white',
      'font-size':'20px',
      'font-weight':'bold'
    });
    const typewriter = (param) => {
      let el = document.querySelector(param.el);
      let speed = param.speed;
      let string = param.string.split("");
      string.forEach((char, index) => {
          setTimeout(() => {
              el.textContent += char;
          }, speed * index);
      });
    };
    typewriter({
      el: "#video", 
      string: "水もこまめにとったほうがいいですよ！！", 
      speed: 100 
    });
  })

  pullDownButton.addEventListener('mouseover', function(){
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownButton1.addEventListener('mouseover', function(){
    if (pullDownParents1.getAttribute("style") == "display:block;") {
      pullDownParents1.removeAttribute("style", "display:block;")
    } else {
      pullDownParents1.setAttribute("style", "display:block;")
    }
  })

  changeColor.addEventListener('mouseover', function(){
    changeColor.setAttribute("style", "background-color:gray;")
  })

  changeColor.addEventListener('mouseout', function(){
    changeColor.removeAttribute("style", "background-color:none;")
  })

  clickClickRight.addEventListener('click', function(){
    imageAppear.src = "https://user-images.githubusercontent.com/84824479/126291449-32632aa3-9309-44b2-80e5-af5093a8f31c.gif"
    imageAppear.classList.add("img-after")
  })

  clickButton.addEventListener('click',function () {
    downInnerBottom.innerText = "カンパ〜〜〜い！！！！！";
    $('#inner-bottom').css({
      'color':'white',
      'font-size':'90px',
      'font-weight':'bold'
    });
  })

  clickImage.addEventListener('click', function () {
    clickImage.width = 1407;
    clickImage.height = 936;
  })

})
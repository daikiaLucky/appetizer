window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")

  const pullDownButton1 = document.getElementById("lists1")
  const pullDownParents1 = document.getElementById("pull-down1")

  const changeColor = document.getElementById("contact")

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


})
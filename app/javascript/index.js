window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")

  const pullDownButton1 = document.getElementById("lists1")
  const pullDownParents1 = document.getElementById("pull-down1")

  const changeColor = document.getElementById("contact")

  const clickButton = document.getElementById("button")
  const clickInnerTop = document.getElementById("inner-top")

  clickButton.addEventListener('click', function() {
    // タイムスタンプを取得
    const date = new Date();
    const timestamp = date.getTime();
 
    // 追加するimgを生成
    const img = document.createElement('img');
    img.src = '../../app/assets/images/topimage7.jpg?' + timestamp;

    // 追加エリアの中身を空にしてimgを追加
    clickInnerTop.textContent = null;
    clickInnerTop.appendChild(img);
  }, false);


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
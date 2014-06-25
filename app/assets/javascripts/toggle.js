function toggle(el){
  if(el.className!="pause") {
      el.src= "<%= image_path('pause.svg'); %>";
      el.className="pause";
    }
    else if(el.className=="pause") {
        el.src= "<%= image_path('play.svg'); %>";
        el.className="play";
      }

   return false;
}


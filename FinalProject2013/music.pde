void music(){
 if(startScreen){
   if(tinytim.position()<=13000){
   tinytim.cue(13000);
    }
 
    if(tinytim.position()>=tinytim.length()-10000){
      tinytim.cue(13000);
    }
     tinytim.play();
  }
if((i==0||i==1||i==2||i==3)&&!screenchange){
  ragtime.play();
  if(ragtime.position()>=ragtime.length()){
    ragtime.cue(0);
  }
}
if((i==4||i==5)&&!screenchange){
  funsong.play();
  if(funsong.position()>=funsong.length()){
    funsong.cue(0);
  }
}
if(i==6&&!screenchange){
 nyancatsong.play();
        if(nyancatsong.position()>=nyancatsong.length()){
          nyancatsong.cue(0);
        }
}
    if((i==7||i==8||i==9||i==10||i==11)){
  darkmusic.play();
  if(darkmusic.position()>=darkmusic.length()){
   darkmusic.cue(0); 
  }
}
if(i==12|i==13){
  tinytim.play();
 if(tinytim.position()<=13000){
   tinytim.cue(13000);
    }
 
    if(tinytim.position()>=tinytim.length()-10000){
      tinytim.cue(13000);
    }
}

}

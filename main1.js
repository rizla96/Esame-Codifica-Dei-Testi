



function gestoreClickRetro(){
      nodoFronte1.style.display='none';
      nodoRetro1.style.display='block';
      nodocartolina1InfoFronte.style.display='none';
      nodocartolina1InfoRetro.style.display='block';
    }
function gestoreClickFronte(){
      nodoFronte1.style.display='block';
      nodoRetro1.style.display='none';
      nodocartolina1InfoFronte.style.display='block';
      nodocartolina1InfoRetro.style.display='none';
      }

function gestoreClickRetro2(){
      nodoFrontec2.style.display='none';
      nodoRetroc2.style.display='block';
      nodocartolina2InfoFronte.style.display='none';
      nodocartolina2InfoRetro.style.display='block';
    }
function gestoreClickFronte2(){
      nodoFrontec2.style.display='block';
      nodoRetroc2.style.display='none';
      nodocartolina2InfoFronte.style.display='block';
      nodocartolina2InfoRetro.style.display='none';
        }
function gestoreClickRetro3(){
      nodoFrontec3.style.display='none';
      nodoRetroc3.style.display='block';
      nodocartolina3InfoFronte.style.display='none';
      nodocartolina3InfoRetro.style.display='block';
}
function gestoreClickFronte3(){
      nodoFrontec3.style.display='block';
      nodoRetroc3.style.display='none';
      nodocartolina3InfoFronte.style.display='block';
      nodocartolina3InfoRetro.style.display='none';
        }




var nodoFronte1;
var nodoRetro1;
var nodoFrontec2;
var nodoRetroc2;
var nodoFrontec3;
var nodoRetroc3;


var nodoretro;
var nodofronte;
var nodofronte2;
var nodofronte3;
var img = ["cartoline/7694-019F1.jpg","cartoline/7694-019R1.jpg"]
var nodoFotoCart1;
var nodoretro2;
var img2 = ["cartoline/7694-071F.jpg","cartoline/7694-071R.jpg"]
var nodoFotoCart2;
var nodoretro3;
var img3 = ["cartoline/7694-083F.jpg","cartoline/7694-083R.jpg"]
var nodoFotoCart3;



var nodocartolina1InfoRetro;
var nodocartolina1InfoFronte;
var nodocartolina2InfoRetro;
var nodocartolina2InfoFronte;
var nodocartolina3InfoRetro;
var nodocartolina3InfoFronte;




function gestoreLoad(){
    try {
        nodoretro = document.getElementById("retro");
        nodofronte = document.getElementById("fronte");
        nodofronte2 = document.getElementById("fronte2");
        nodofronte3 = document.getElementById("fronte3");
        nodoFotoCart1 = document.getElementById("fotoCart1");
        nodoretro2 = document.getElementById("retro2");
        nodoFotoCart2 = document.getElementById("fotoCart2");
        nodoretro3 = document.getElementById("retro3");
        nodoFotoCart3 = document.getElementById("fotoCart3");
        nodocartolina1InfoRetro = document.getElementById("cartolina1InfoRetro");
        nodocartolina1InfoFronte = document.getElementById("cartolina1InfoFronte");
        nodocartolina2InfoRetro = document.getElementById("cartolina2InfoRetro");
        nodocartolina2InfoFronte = document.getElementById("cartolina2InfoFronte");
        nodocartolina3InfoRetro = document.getElementById("cartolina3InfoRetro");
        nodocartolina3InfoFronte = document.getElementById("cartolina3InfoFronte");


        nodoFronte1 = document.getElementById("fronte1");
        nodoRetro1 = document.getElementById("retro1");
        nodoRetroc2 = document.getElementById("retroc2");
        nodoFrontec2 = document.getElementById("frontec2");
        nodoFrontec3 = document.getElementById("frontec3");
        nodoRetroc3 = document.getElementById("retroc3");

        nodoretro.onclick = gestoreClickRetro;
        nodofronte.onclick = gestoreClickFronte;
        nodoretro2.onclick = gestoreClickRetro2;
        nodofronte2.onclick = gestoreClickFronte2;
        nodoretro3.onclick = gestoreClickRetro3;
        nodofronte3.onclick = gestoreClickFronte3;




    } catch (e) {
        alert("gestoreLoad "+ e)
    }
}

window.onload=gestoreLoad;
var blueHighlight = 'background: #FF4136; color: #fff; fill: #0074D9; stroke: #0074D9;'

function test(item){
    $(item).css("fill", "rgb(255,65,54)");
    $(item).css("background", "red");
    $(item).css("stroke", "red");
    $(item).css("color", "red");
    $(item).css("opacity", "0.5");

}

let dugme = document.getElementById("dugme");
let komentari = document.getElementById("komentari");
let dugmeStr = "Show comments";
dugme.addEventListener("click", function(){
    komentari.classList.add("btn-none");
   dugme.innerText = dugmeStr;
    console.log("event")
})
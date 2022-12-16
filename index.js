let dugme = document.getElementById("dugme")
let komentari = document.getElementById("komentari")
dugme.addEventListener("click", function(){
    komentari.classList.add("btn-none");
    button.innerHtml("Show comments");
    console.log("event")
})
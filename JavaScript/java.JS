//-----------------------------------------------------------
// ScrollReveal - Animación de desplazamiento
function animacion (){
    const sr = ScrollReveal({
        origin: "top",
        distance: "85px",
        duration: 2500,
        reset: false
    
    });
    
    sr.reveal(".ods-text", { delay: 250 });
    sr.reveal(".buttom-ods", { delay: 250 });
    sr.reveal(".img-ods", { delay: 250 });
    sr.reveal(".footer-1", { delay: 10 });
    sr.reveal(".footer-2", { delay: 10 });

}
animacion();

//-----------------------------------------------------------


  


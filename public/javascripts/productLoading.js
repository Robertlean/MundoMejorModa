

showImage = (input,idImage) =>{
    document.getElementById(input).onchange = e =>{
        let reader = new FileReader();
        reader.readAsDataURL(e.target.files[0]);
        reader.onload = () =>{
            localStorage.setItem("pathImage",reader.result)
            document.getElementById(idImage).src = reader.result;
        }
    };

}



showImage("image","preview-image");
showImage("image1","preview-image1");
showImage("image2","preview-image2");
showImage("image3","preview-image3");
showImage("image4","preview-image4");


limpiar = (inputId,imageId,deleteId) =>{

    document.getElementById(inputId).value = "";
    document.getElementById(imageId).src = "/images/default.png";
    document.getElementById(deleteId).value = deleteId;
}

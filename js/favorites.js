'use strict';

$(document).ready(function(){

    checkFavoriteStatus();

    selectFavorite();

    showFavoriteById();

    deleteFavorite();

    goToFavoriteRecipe();

});

 // Gère les favoris
 function selectFavorite(){
    $('.favorite').click(function(e) {
        e.preventDefault();

        if ($(this).hasClass('fas') == false) {
            $(this).addClass('fas');
            const id = $(this).data('id');
            const title = $('.title').text();
            console.log(title)
            window.localStorage.setItem(id, title); 

        } else {
            $(this).removeClass('fas');
            const id = $(this).data("id");
            window.localStorage.removeItem(id);
        }
       
    })
}


// Affiche les recettes favorites
function showFavoriteById() {
    for ( let i = 0; i < localStorage.length; i++){
        let id = localStorage.key(i);
        let favorite = localStorage.getItem(id);
        
        $('.favorite-section').append(`
        <li class="favorite-article" data-id="${id}">
            <a class="favorite-description" data-id="${id}"><p>- ${favorite}</h3></a>
            <i class="fas fa-trash-alt delete" title="Supprimer" data-id="${id}"></i>
        </li>`);
    }
}

// Supprime les favoris 
function deleteFavorite() {
    $('.delete').on("click", function() {
        let id = $(this).data("id");
        window.localStorage.removeItem(id);
        $(this).closest('.favorite-article').remove();
    });
}


// Dirige vers la page de la recette selon son id
function goToFavoriteRecipe(){

    $('.favorite-article').click(function(){
        const id = $(this).data("id");
        $(location).attr('href','oneRecipe.php?id='+ id);   
    })

}

// Vérifie si la recette est déjà enregistrée dans les favoris
function checkFavoriteStatus() {

    for ( let i = 0; i < localStorage.length; i++){
        let id = localStorage.key(i);
        let currentRecipeId = $('.favorite').data("id");

        if ( id == currentRecipeId ) {
            $('.oneRecipe-section .fa-heart').addClass('fas');
        }
                    
    }
        
}
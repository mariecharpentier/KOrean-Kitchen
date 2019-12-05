// Requête pour demander les évènements correspondant à la recherche 
async function getKoreanEvents() {
    const data = await $.ajax(`https://opendata.paris.fr/api/v2/catalog/datasets/que-faire-a-paris-/records?search=coree&rows=2&sort=date_end`);

    // Traitement du résultat
    const events = data.records.map(record => record.record.fields);
    console.log(events)

    return events;
}

// Affiche les résultats
function showKoreanEvents(events) {
        events.forEach(event => {
            $('.k-event-section').append(`
            <article>
                <a href="https://quefaire.paris.fr/${event.id}" target="blank">
                    <img src="${event.cover_url}">
                    <h3>${event.title}</h3>
                    <p class="category">${event.category}</p>       
                </a>
            </article>`);
        });

        $("p:contains(Danse)").replaceWith('Dance');
        $("p:contains(Exposition)").replaceWith('Exhibition');
        $("p:contains(Classique)").replaceWith('Classical Music');
        $("p:contains(Animations)").replaceWith('Events');
        $("p:contains(Spectacle)").replaceWith('Live Performance');
}

$(document).ready(function(){

    // Récupère les prochains évènements coréens à Paris grâce à l'API opendata Paris et affiche le résultat
    (async function() {
        const koreanEvents = await Promise.resolve(getKoreanEvents());
        showKoreanEvents(koreanEvents);
        console.log(koreanEvents)
      })();
  
})

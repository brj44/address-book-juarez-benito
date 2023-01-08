$(document).ready(function() {
    console.log("test");
    const el = document.getElementById('new_contact');
    if(el) {
        el.addEventListener("submit", function (event) {
            event.preventDefault();
            const data = $(this).serialize();
            $.ajax({
                url: '/people/:id',
                method: 'POST',
                data: data
            }).done(function (response) {
                console.log(response);
            });
        });
    }
});
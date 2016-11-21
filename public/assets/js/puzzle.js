function init_grid(size, load_words, text) {
    text = text.replace(/\s+/g, '');
    var htmlString = "";
    var row = 1;
    var col = 1;
    for (var i = 0; i < (size * size); i++) {
        row = Math.floor(i / size) + 1;
        col = (i % size) + 1;
        if (load_words) {
            htmlString += "<div class='text_cell' row='" + row + "' col='" + col + "' style='background-color: darkgray;'>" + text[i] + "</div>";
        } else {
            htmlString += "<div class='text_cell' row='" + row + "' col='" + col + "' ></div>";
        }
    }
    document.getElementById('wrap_preview').style.width = "" + size * 100 + "px";
    document.getElementById('wrap_preview').style.height = "" + size * 100 + "px";
    document.getElementById('wrap_preview').innerHTML = htmlString;
}


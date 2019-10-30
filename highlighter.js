(function(){
    var table = document.getElementsByTagName("table")[0];
    var pattern = /\(([4|5|6|7|8|9]\d\%)\)/g;

    table.innerHTML = table.innerHTML.replace(pattern, "(<span style='background-color:red;'>$1</span>)");
})();
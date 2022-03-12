function query() {
// File
var vFile = document.getElementById("myfile").files[0];
// Reader
var vReader = new FileReader();
vReader.readAsText(vFile);
vReader.onload = function(pEvent) {
// String Input
var vContent = pEvent.target.result;
// JSON to object
var vJson = JSON.parse(vContent);
// Query
var vResult = vJson.prenom + " " + vJson.nom + " (" + vJson.age + ")";
// Output
document.getElementById("mydiv").appendChild(document.createTextNode(vResult));
};
}

var loader;
function myFunction() {
    loader = setTimeout(showPage, 5000);
}

function showPage() {
  document.getElementById('body').className = 'loaded';
}

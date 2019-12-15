(() => {
  setTimeout(function() {
    window.location = "/";
  }, 5000);

  var timeleft = 5;
  var downloadTimer = setInterval(function() {
    console.log("aaaa");
    document.getElementById("time").innerHTML = timeleft;
    timeleft -= 1;
  }, 1000);
})();

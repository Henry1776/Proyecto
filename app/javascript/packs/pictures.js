document.addEventListener("DOMContentLoaded", function() {
  var input = document.getElementById("address")
  var button = document.getElementById("position")

  button.addEventListener("click", function(event) {
    event.preventDefault()
    if (navigator.geolocation){
      navigator.geolocation.getCurrentPosition(showPosition)
    } else {
      alert("No puedo obtener tu ubicación")
    }
  })
})

function showPosition(position) {
  
  $.ajax({
    type:"get", 
    url: `/pictures/new?latitude=${position.coords.latitude}&longitude=${position.coords.longitude}`,
    dataType: "json", 
    success: function(data) {
      var input = document.getElementById("address")
      input.value = data.address      
    }
  })
}
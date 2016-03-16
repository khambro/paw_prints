$(document).ready(function() {


  $(".add-pet").click(function() {
    $(".show-form").show();
  });

  $(".client").click(function() {
    $(".showit").show();
  });


  $(".pet").click(function() {
    var url = this.href;
    // console.log(url);
    $.get(url, function(data) {
      console.log(data);
      $(".pet-name").html(data["pet"]["name"]);
      $(".owner-name").html(data["owner"]["name"]);
      $(".owner-phone").html(data["owner"]["phone"]);
      $(".owner-email").html(data["owner"]["email"]);
      // $(".owner-name").val(data.pet.owner.name);
      // $(".email").val(data.street);
      // $(".phone").val(data.city);
    });
    return false;
  });





});

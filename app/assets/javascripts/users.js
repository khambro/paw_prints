$(document).ready(function() {


  $(".add-pet").click(function() {
    $(".show-form").show();
  });

  $(".client").click(function() {
    $(".showit").show();
  });

  $(".show").click(function() {
    $(".update").show();
  });

  // $('#phone').mask('(000-000-0000)');


  $(".pet").click(function() {
    var url = this.href;
    // console.log(url);
    $.get(url, function(data) {
      console.log(data);
      $(".pet-name").html("Dashboard for " + data["pet"]["name"]);
      $(".owner-name").html("Owner: " + data["owner"]["name"]);
      $(".owner-phone").html("Phone: " + data["owner"]["phone"]);

      $(".owner-email").html("Email: " + data["owner"]["email"]);
      $(".pet-photo").attr("src", data["pet"]["picture"]["profile"]["url"]);
      $(".petdeets").prepend($(".create-report").attr("href", "/report/" + data["pet"]["id"]));
      $(".create-report").html("Create Report")

      console.log($(".pet-photo"));
      var report = [];
      for (i=0; i<data["reports"].length; i++ ) {
        report[i] = []
        report[i].push("Activities: " + data["reports"][i]["activity"]);
        report[i].push(moment(data["reports"][i]["created_at"]).format("dddd, MMMM Do YYYY"));
        report[i].push("Mood:" + data["reports"][i]["emotion"]);
        report[i].push(data["reports"][i]["images"][0]["square_image"]);
      }
      report = report.reverse();


      var reports = $(".reportcard")

      reports.html("");
      for (i=0; i<report.length; i++ ) {
        var div = $("<div class='jsreport'>")
        var when = $("<h4 class='when'>")
        var what = $("<h5 class='what'>")
        var mood = $("<h5 class='mood'>")
        var image = $("<img class='report-image'>")
        div.append(when.text(report[i][1]), what.text(report[i][0]), mood.text(report[i][2]), image.attr("src", report[i][3]));
        reports.append(div);
      }

    });

    return false;

  });





});

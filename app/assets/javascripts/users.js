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


  $(".pet").click(function() {
    var url = this.href;
    // console.log(url);
    $.get(url, function(data) {
      console.log(data);
      $(".pet-name").html("Dashboard for " + data["pet"]["name"]);
      $(".owner-name").html("Owner: " + data["owner"]["name"]);
      $(".owner-phone").html("Phone: " + data["owner"]["phone"]);
      $(".owner-email").html("Email: " + data["owner"]["email"]);
      $(".petdeets").prepend($(".create-report").attr("href", "/report/" + data["pet"]["id"]));
      $(".create-report").html("Create Report")

      console.log($(".create-report"));
      var report = [];
      var day
      for (i=0; i<data["reports"].length; i++ ) {
        report[i] = []
        report[i].push("Today's activities:" + data["reports"][i]["activity"]);
        // var day = new Date(data["reports"][i]["created_at"], "YYYY-MM-DD HH:mm");
        // console.log(day);
        report[i].push("Date:" + moment(data["reports"][i]["created_at"]).format("dddd, MMMM Do YYYY"));
        report[i].push("Mood:" + data["reports"][i]["emotion"]);
        report[i].push(data["reports"][i]["images"][0]["square_image"]);
      }
      report = report.reverse();


      var reports = $(".reportcard")

      reports.html("");
      for (i=0; i<report.length; i++ ) {
        var div = $("<div>")
        var h2 = $("<h2>")
        var h22 = $("<h2>")
        var h23 = $("<h2>")
        var h3 = $("<h3>")
        var image = $("<img>")
        div.append(h2.text(report[i][0]), h22.text(report[i][1]), h23.text(report[i][2]), image.attr("src", report[i][3]));
        reports.append(div);
      }

    });

    return false;

  });





});

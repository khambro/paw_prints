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
      $(".petdeets").append($(".create-report").attr("href", "/report/" + data["pet"]["id"]))
      console.log($(".create-report"));
      var report = [];
      for (i=0; i<data["reports"].length; i++ ) {
        report[i] = []
        report[i].push(data["reports"][i]["activity"]);
        report[i].push(data["reports"][i]["created_at"]);
        report[i].push(data["reports"][i]["emotion"]);
        report[i].push(data["reports"][i]["images"][0]["square_url"])
        report[i].push(data["reports"][i]["images"][0]["image_url"]["url"])
      }


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
        console.log(reports);
      }

    });

    return false;

  });








var h1 = $("<h1>")
h1.text = ("Hello")

});

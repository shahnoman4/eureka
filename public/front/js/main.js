var a = 0;
$(window).scroll(function () {
  $(".counter-value").each(function () {
    var e = $(this),
      t = e.attr("data-count");
    $({
      countNum: e.text(),
    }).animate(
      {
        countNum: t,
      },
      {
        duration: 2e3,
        easing: "swing",
        step: function () {
          e.text(Math.floor(this.countNum));
        },
        complete: function () {
          e.text(this.countNum);
        },
      }
    );
  }),
    (a = 1);
});
$(".header__nav").click(function () {
  $(".backgroundfixed").addClass("active");
  $(".header__right").addClass("active");
});
$(".navclose,.backgroundfixed").click(function () {
  $(".backgroundfixed").removeClass("active");
  $(".header__right").removeClass("active");
});

$(".accordion1Boxh").click(function () {
  $(this).closest(".accordion1Box").toggleClass("active");
});

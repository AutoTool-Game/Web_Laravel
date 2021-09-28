var stt = 3;
var firstImg = $("div.slide:first").attr("idx");
var nextImg = firstImg + 3;
var endImg = $("div.slide:last").attr("idx");
firstShow();
function firstShow(){
	$("div.slide").attr("display", "none");
	for(var i = $("div.slide").attr("idx"); i < endImg; i++){
		if(i < 4){
			$("div.slide").eq(i).show();
		}
	}
}

function lastShow(){
	$("div.slide").attr("display", "none");
	for(var i = $("div.slide").attr("idx"); i < endImg; i++){
		if(i > endImg - 4){
			$("div.slide").eq(i).show();
		}
	}
}
//button click
$("#next").click(function () {
    if (++stt > endImg) {
        stt = 3;
    }
    changeImg(stt);
});

$("#prev").click(function(){
	if(--stt < 3){
		stt = endImg;
	}
	changeImg(stt);
});

var interval;
var timer = function () {
    interval = setInterval(function () {
        $("#next").click();
    }, 5000);
};
timer();

function changeImg(stt) {
	if(stt == 3){
		$("div.slide").hide();
		firstShow();
	}
	if(stt == endImg){
		$("div.slide").hide();
		lastShow();
	}
    $("div.slide").eq(stt-4).hide();
    $("div.slide").eq(stt).fadeIn(500);

    clearInterval(interval);
    timer();
};
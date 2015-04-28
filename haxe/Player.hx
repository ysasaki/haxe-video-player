import js.Browser;
import js.html.VideoElement;

class Player {
    static public function main() {
        var video =
            cast(Browser.document.getElementById('video'), VideoElement);

        video.addEventListener("loadedmetadata", function(e) {
            Browser.alert("loadedmetadata");
        });
        video.addEventListener("canplaythrough", function(e) {
            video.controls = true;
        });
        video.addEventListener("ended", function(e) {
            Browser.alert("ended");
        });
        video.src = "movies/sample.mp4";
    }
}

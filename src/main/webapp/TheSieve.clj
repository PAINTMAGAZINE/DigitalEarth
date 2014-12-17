(fn [rq rs]
 (let [
  ct 1]
  (hiccup.core/html "<!DOCTYPE html>"
   [:html
    [:head
     [:title "TheSieve « NooSphere"]]
    [:body
     [:p "we know " [:span#ct] " primes up to " [:span#max]]
     [:script "
//https://oeis.org/A001223
var gaps=[1, 2, 2, 4, 2, 4, 2, 4, 6, 2, 6, 4, 2, 4, 6, 6, 2, 6, 4, 2, 6, 4, 6, 8, 4, 2, 4, 2, 4, 14, 4, 6, 2, 10, 2, 6, 6, 4, 6, 6, 2, 10, 2, 4, 2, 12, 12, 4, 2, 4, 6, 2, 10, 6, 6, 6, 2, 6, 4, 2, 10, 14, 4, 2, 4, 14, 6, 10, 2, 4, 6, 8, 6, 6, 4, 6, 8, 4, 8, 10, 2, 10, 2, 6, 4, 6, 8, 4, 2, 4, 12, 8, 4, 8, 4, 6, 12];
var curr=2;
for (var i=0;i<gaps.length;i++) {
 curr+=gaps[i];
 String.fromCharCode(65537).charCodeAt(0);
}
document.getElementById('ct').innerHTML=gaps.length+1;
document.getElementById('max').innerHTML=curr;
"]]])))
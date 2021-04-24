import 'package:flutter/cupertino.dart';

class Song {
  final String name;
  final String singer;
  final String imgSrc;
  final String url;
  Song(
      {@required this.name,
      @required this.imgSrc,
      @required this.url,
      @required this.singer});
}

List allSongs = [
  Song(
    name: "Tera Ban Jaunga",
    imgSrc: "images/tera_ban.jpg",
    url: "https://gaana.com/song/tera-ban-jaunga",
    singer: "Akhil Sachdeva, Tulsi Kumar",
  ),
  Song(
    name: "Lut Gaye",
    imgSrc: "images/lut_gaye.jpg",
    url: "https://gaana.com/song/lut-gaye-feat-emraan-hashmi",
    singer: "Jubin Nautiyal",
  ),
  Song(
    name: "Garmi",
    imgSrc: "images/garmi.jpg",
    url: "https://gaana.com/song/garmi-from-street-dancer-3d-feat-varun-dhawan",
    singer: "Badshah, Neha Kakkar",
  ),
  Song(
    name: "Tum hi aana",
    imgSrc: "images/tum_hi.jpg",
    url: "https://gaana.com/song/tum-hi-aana-from-marjaavaan",
    singer: "Jubin Nautiyal",
  ),
  Song(
    name: "Kesari- Ve Maahi",
    imgSrc: "images/va_maahi.jpg",
    url: "https://gaana.com/album/kesari",
    singer: "Arijit Singh",
  ),
  Song(
    name: "Lagdi Lahore Diya",
    imgSrc: "images/lagdi_lahor.jpg",
    url: "https://gaana.com/song/lagdi-lahore-di-from-street-dancer-3d",
    singer: "Guru Randhava, Tulsi Kumar",
  ),
  Song(
    name: "Saiyonee",
    imgSrc: "images/sayoni.jpg",
    url: "https://gaana.com/song/saiyonee",
    singer: "Gauravdas Gupta",
  ),
  Song(
    name: "Dheere Dheere",
    imgSrc: "images/dhire_dhire.jpg",
    url: "https://gaana.com/song/dheere-dheere-19",
    singer: "Yo Yo Honey Singh",
  ),
  Song(
    name: "Dil Me Ho Tum",
    imgSrc: "images/dil_me.jpg",
    url: "https://gaana.com/song/dil-mein-ho-tum-3",
    singer: "Rochak Kohli, Bappi Lahiri",
  ),
  Song(
    name: "Pal Pal Dil Ke Pass",
    imgSrc: "images/pal_pal.jpg",
    url: "https://gaana.com/song/dil-mein-ho-tum-3",
    singer: "Sachet-Parampara, Rishi Rich",
  ),
];

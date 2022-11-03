class Location {
  String imgLink;
  String locationName;
  String locationDescription;

  Location(this.imgLink, this.locationName, this.locationDescription);
}

class LocationProvider {
  static List<String> routes = [];

  static const String _baseSuggestion = "Which way do you wish to go next?";

  static Location deepForest = Location(
      "https://cdnb.artstation.com/p/assets/images/images/021/318/277/large/fikran-hadinata-dark-forest-2.jpg",
      "Dark forest",
      "Concealed under trees crown mystical creatures are dwelling in shadows of dead plants. But it is little known what is to be expected in such gloomy place. Yet you managed to trespass it and left unnoticed $_baseSuggestion");

  static Location wastelands = Location(
      "https://i.pinimg.com/originals/95/b2/56/95b256e8883f6d24175137534e140376.jpg",
      "Wastelands",
      "Barren and deserted, the Wastelands do not welcome strangers. Especially affluent ones. Nevertheless, you left soulless terra behind you. $_baseSuggestion");

  static Location caves = Location(
      "https://i.pinimg.com/originals/12/1e/98/121e98e9ee5fb25cf2ce4d1ec92e3396.jpg",
      "Caves",
      "Stolid stones surround you. Where will the narrow path lead you to? Still, having found the way you, $_baseSuggestion");

  static Location underworld = Location(
      "https://c4.wallpaperflare.com/wallpaper/115/967/767/dark-cave-landscape-underworld-towers-wallpaper-preview.jpg",
      "Underworld",
      "What lies beneath? May ask curious minds. Underworld keep its secrets and it is forbidden to utter a word of what is inside. $_baseSuggestion");

  static Location etherworld = Location(
      "http://cdn.wallpaperhi.com/1024x768/20111201/3585.jpg",
      "Etherworld",
      "Majestic views over there. Some believe it to be a pinnacle of nomad's life, the last resort. Truly, it is tempting to stay here. Who knows, what mystery encompasses this place. _$_baseSuggestion");
}

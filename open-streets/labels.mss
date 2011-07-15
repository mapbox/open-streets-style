@font_reg: "Ubuntu Regular","Arial Regular","DejaVu Sans Book";

/* ---- PLACENAMES ---- */

.placename.medium[place='city'][zoom>6][zoom<14],
.placename.medium[place='metropolis'][zoom>6][zoom<14] {
  text-face-name:@font_reg;
  text-name:"[name]";
  text-fill:#555;
  text-halo-fill:#fff;
  text-halo-radius:2;
  [zoom=7] { text-size:10; text-halo-radius:1; }
  [zoom=8] { text-size:10; text-halo-radius:1; }
  [zoom=9] { text-size:11; }
  [zoom=10] { text-size:12; }
  [zoom=10] { text-size:13; text-character-spacing:1; }
  [zoom=11] { text-size:14; text-character-spacing:2; }
  [zoom=12] { text-size:16; text-character-spacing:4; }
  [zoom=13] { text-size:18; text-character-spacing:6; }
}

.placename.medium[place='large_town'][zoom>7][zoom<16],
.placename.medium[place='town'][zoom>8][zoom<16],
.placename.medium[place='small_town'][zoom>9][zoom<16]{
  text-face-name:@font_reg;
  text-name:"[name]";
  text-fill:#555;
  text-halo-fill:#fff;
  text-halo-radius:2;
  [zoom=8] { text-size:10; text-halo-radius:1; }
  [zoom=9] { text-size:10; text-halo-radius:1; }
  [zoom=10] { text-size:10; text-halo-radius:1; }
  [zoom=11] { text-size:11; }
  [zoom=12] { text-size:12; }
  [zoom=13] { text-size:13; text-character-spacing:1; }
  [zoom=14] { text-size:14; text-character-spacing:2; }
  [zoom=15] { text-size:16; text-character-spacing:4; }
  [zoom=16] { text-size:18; text-character-spacing:6; }
}

/* ---- HIGHWAY ---- */

.highway-label[zoom>11] {
  text-face-name:@font_reg;
  text-halo-radius:1;
  text-placement:line;
  text-name:"''";
  [highway='motorway'][zoom>=12] {
    text-name:"[name]";
    text-fill:spin(darken(@motorway_fill,70),-15);
    text-halo-fill:lighten(@motorway_fill,8);
    [zoom>=13] { text-size:11; }
    [zoom>=15] { text-size:12; }
    [zoom>=17] { text-size:14; }
  }
  [highway='trunk'][zoom>=12] {
    text-name:"[name]";
    text-fill:spin(darken(@trunk_fill,66),-15);
    text-halo-fill:lighten(@trunk_fill,8);
    [zoom>=15] { text-size:11; }
    [zoom>=17] { text-size:12; }
  }
  [highway='primary'][zoom>=13] {
    text-name:"[name]";
    text-fill:spin(darken(@primary_fill,66),-15);
    text-halo-fill:lighten(@primary_fill,8);
    [zoom>=15] { text-size:11; }
    [zoom>=17] { text-size:12; }
  }
  [highway='secondary'][zoom>=13] {
    text-name:"[name]";
    text-fill:spin(darken(@secondary_fill,66),-15);
    text-halo-fill:lighten(@secondary_fill,8);
    [zoom>=15] { text-size:11; }
    [zoom>=17] { text-size:12; }
  }
  [highway='residential'][zoom>=15],
  [highway='road'][zoom>=15],
  [highway='tertiary'][zoom>=15],
  [highway='unclassified'][zoom>=15] {
    text-name:"[name]";
    text-fill:#444;
    text-halo-fill:#fff;
    [zoom>=17] { text-size:12; }
  }
}

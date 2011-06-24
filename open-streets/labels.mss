@font_reg: "Ubuntu Regular","Arial Regular","DejaVu Sans Book";

/* ---- HIGHWAY ---- */

.highway-shield {
  /* TODO */
}

.highway-label {
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

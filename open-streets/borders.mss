/* Using shapefiles from Natural Earth. */
/* TODO: Only use Natural Earth @ low zoom levels;
         style actual OSM borders further down... */
#ne-admin-0::glow[zoom>0] {
  line-opacity: 0.5;
  line-color: #fff;
  [zoom=1] { line-width:0.4 + 2; }
  [zoom=2] { line-width:0.6 + 2; }
  [zoom=3] { line-width:0.8 + 2; }
  [zoom=4] { line-width:1.0 + 2; }
  [zoom=5] { line-width:1.5 + 2; }
  [zoom>5] { line-width:2.0 + 2; }
}
#ne-admin-0[zoom>0] {
  line-opacity: 0.5;
  line-color: #437;
  [zoom=1] { line-width:0.4; }
  [zoom=2] { line-width:0.6; }
  [zoom=3] { line-width:0.8; }
  [zoom=4] { line-width:1.0; }
  [zoom=5] { line-width:1.5; }
  [zoom>5] { line-width:2.0; }
}

#ne-admin-1::glow[zoom>3] {
  line-opacity: 0.5;
  line-color: #fff;
  [zoom=5] { line-width:0.4 + 2; }
  [zoom=6] { line-width:0.6 + 2; }
  [zoom=7] { line-width:0.8 + 2; }
  [zoom=8] { line-width:1.0 + 2; }
  [zoom>8] { line-width:1.5 + 2; }
}
#ne-admin-1[zoom>4] {
  line-opacity: 0.5;
  line-color: #437;
  [zoom=5] { line-width:0.4; line-dasharray:2,1; }
  [zoom=6] { line-width:0.6; line-dasharray:3,1; }
  [zoom=7] { line-width:0.8; line-dasharray:5,2; }
  [zoom=8] { line-width:1.0; line-dasharray:8,2; }
  [zoom>8] { line-width:1.5; line-dasharray:10,2; }
}
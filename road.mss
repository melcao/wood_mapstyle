// Line image patterns don't work well at lower zoomlevels,
// so we vary opacity, weight, and dasharrays to bring texture
// to regular line strokes.

#road['mapnik::geometry_type'=2]::line,
#bridge['mapnik::geometry_type'=2]::line,
#tunnel['mapnik::geometry_type'=2]::line {
 
  [class='motorway'] {  
    [zoom<=20] {
      a/line-color: #efc6a8;
      b/line-color: #efc6a8;
      a/line-width:0.6;
      a/line-dasharray:2,1;
      b/line-width:0.8;
      a/line-opacity:.4;
      b/line-opacity:.4;
      //b/line-dasharray:12,1;
      
      
            [zoom<7] {
        a/line-color: #ffffff;
        b/line-color: #ffffff;
        a/line-opacity:.1;
        b/line-opacity:.1;
        b/line-dasharray:2,1;
      }
      [zoom>=9] {
        a/line-opacity:.4;
        b/line-opacity:.1;
        b/line-dasharray:2,1;
      }
      [zoom>=8] {
        a/line-width:1;
        b/line-width:1.2;
      }
      [zoom=10] {
        a/line-width:1;
        b/line-width:1;
      }
      [zoom=11] {
        a/line-width:1;
        b/line-width:1;
        b/line-opacity:1;
        b/line-dasharray:1,1;
      }
            [zoom=12] {
        a/line-width:1;
        b/line-width:1;
      }
    }
 }

  
  [class='motorway_link'],
  [class='main'] {
    
    [zoom<=20] {
      [zoom<7] {
        a/line-color: #ffffff;
        b/line-color: #ffffff;
        a/line-opacity:.3;
        b/line-opacity:.1;
        b/line-dasharray:2,1;
        b/line-width:.1;
      }
      
      
      
      a/line-color: #efc6a8;
      a/line-opacity: .5;
      a/line-width: .8;
      [zoom=7] { 
        a/line-width: 0.3; 
        a/line-opacity: .4;}
      [zoom=8] { 
        a/line-width: 0.7; 
        a/line-opacity: .2;}
      [zoom=9] { a/line-width: 0.5; }
      [zoom=10] { a/line-width: 1.1; }
      [zoom=11] { a/line-width: 1.2; }
      [zoom=12] { a/line-width: .5; 
       a/line-opacity: 1;}
      [zoom=14] { a/line-width: .4; 
        a/line-color: #c0b5a4;
       a/line-opacity: 1;}
      [zoom=15] { a/line-width: .5; 
        a/line-color: #c0b5a4;
       a/line-opacity: 1;}
          [zoom=16] { a/line-width: 1.4; 
        a/line-color: #c4b394;
       a/line-opacity: 1;}
                [zoom=17] { a/line-width: 1.6; 
        a/line-color: #c4b394;
       a/line-opacity: 1;}
                      [zoom=18] { a/line-width: 1.7; 
        a/line-color: #c4b394;
       a/line-opacity: 1;}
                      [zoom=19] { a/line-width: 1.8; 
        a/line-color: #c4b394;
       a/line-opacity: 1;}
                      [zoom=20] { a/line-width: 1.9; 
        a/line-color: #c4b394;
       a/line-opacity: 1;}
                      [zoom=21] { a/line-width: 2; 
        a/line-color: #c4b394;
       a/line-opacity: 1;}
    }
  }
  
  
  [class='street'],
  [class='street_limited'] {
    [zoom>12]{
      a/line-width:1.5;
      a/line-opacity:0.05;
      a/line-dasharray:2,1;
      b/line-width:1.2;
      b/line-opacity:0.05;
      b/line-dasharray:12,1;
    }
    //[zoom=13] { line-pattern-file:url(img/line_solid_7_31.png); }
    //[zoom=14] { line-pattern-file:url(img/line_solid_7_31.png); }
  }
  [class='service'] {
    [zoom>=15] { line-pattern-file:url(img/line_solid_7_31.png); }
  }
  
  [class='path'] {
    [zoom>=16] { line-pattern-file:url(img/line_dotted_4.png); }
  }
  
  /*[class='major_rail'][zoom>=12],
    [class='minor_rail'][zoom>=16] {
    ['mapnik::geometry_type'=2] {
      a/line-width:1;
      a/line-opacity:0.05;
      a/line-dasharray:2,1;
      b/line-width:1.5;
      b/line-opacity:0.05;
      b/line-dasharray:12,1;
      c/line-width:2;
      c/line-opacity:0.05;
      c/line-dasharray:20,3;
    }
  }*/
}


/*
#road::case,
#bridge::case,
#tunnel::case {
  ['mapnik::geometry_type'=2][zoom<=13]{
    [class='motorway'] {
      [zoom=13] { line-pattern-file:url(img/line_double_14.png); }
      [zoom=14] { line-pattern-file:url(img/line_double_16.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_18.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20.png); }
    }
    [class='motorway_link'],
    [class='main'] {
      [zoom=14] { line-pattern-file:url(img/line_double_14.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_16.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20.png); }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=15] { line-pattern-file:url(img/line_double_14.png); }
      [zoom>=16] { line-pattern-file:url(img/line_double_16.png); }
    }
  }
}*/

#road::dot['mapnik::geometry_type'=1][class='turning_circle'][zoom>=15] {
  marker-width: 6;
  [zoom>=16] { marker-width: 9; }
  [zoom>=17] { marker-width: 12; }
  marker-fill: #e6e6e6;
  marker-line-color: #e0e0e0;
  marker-line-width: 1.5;
}

/*
#road::fill,
#bridge::fill {
  opacity: .2;
  ['mapnik::geometry_type'=2][zoom<=13] {
    [class='motorway'] {
      [zoom=13] { line-pattern-file:url(img/line_double_14_mask.png); }
      [zoom=14] { line-pattern-file:url(img/line_double_16_mask.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_18_mask.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20_mask.png); }
    }
    [class='motorway_link'],
    [class='main'] {
      [zoom=14] { line-pattern-file:url(img/line_double_14_mask.png); }
      [zoom=15] { line-pattern-file:url(img/line_double_16_mask.png); }
      [zoom>15] { line-pattern-file:url(img/line_double_20_mask.png); }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=15] { line-pattern-file:url(img/line_double_14_mask.png); }
      [zoom>=16] { line-pattern-file:url(img/line_double_16_mask.png); }
    }
  }
}*/

#tunnel::case { opacity:0.25; }
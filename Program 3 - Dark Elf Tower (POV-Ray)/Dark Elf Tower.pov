//Ryan Lachman - CS355 - Dark Tower Elf Village - Unit 4 - 8/5/2016

#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"
#include "makegrass.inc"


#declare Camera_1 = camera { angle 90   
                            location  <30.0 , 8.0 ,4.00>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}

camera{Camera_1}

light_source{<1500,2500,-2500> color Grey}

light_source{ <-1000, 800, 3000> 
              color White
              looks_like{ sphere{ <0,0,0>,300 
                    
 
texture{ pigment{ color rgb< 1, 0.80, 0.55>*0.8}
    normal { pigment_pattern{ crackle turbulence 0.2
    colour_map {[0.00, rgb 0]
                [0.25, rgb 1]
                [0.95, rgb 1]
                [1.00, rgb 0]}
                scale 0.15} 1}
    finish  { phong 1 reflection 0.05 }
            }
        } 
    } 
}

plane{ <0,1,0>,1 hollow  
       texture{ pigment { color rgb <0.20, 0.20, 1.0> }
                finish  { ambient 0.25 diffuse 0 } 
              }      
       scale 10000}
plane{<0,1,0>,1 hollow  
       texture{pigment{ bozo turbulence 0.76
                        color_map { [0.5 rgbf<1.0,1.0,1.0,1.0> ]
                                    [0.6 rgb <1.0,1.0,1.0>     ]
                                    [1.0 rgb <0.5,0.5,0.5>     ]}
                       }
               finish { ambient 0.25 diffuse 0} 
              }      
       scale 500}
fog{ fog_type   2
     distance   50
     color      Gray
     fog_offset 0.1
     fog_alt    2.0
     turbulence 0.8
      }
plane { <0,1,0>, 0 
        texture { pigment{ color rgb<0.35,0.65,0.0>*0.72}
                  normal { bumps 0.75 scale 0.015  }
                  finish { phong 0.1 }
                }
      }
prism { -1.00 ,1.00 , 6
       <-1.00, 0.00>, 
       < 1.00, 0.00>, 
       < 1.00, 1.00>, 
       < 0.00, 1.50>, 
       <-1.00, 1.00>, 
       <-1.00, 0.00>   
       rotate<-90,0,0> scale<1,1,-1>  
                texture{ T_Stone4    
                normal { agate 0.25 scale 0.15 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              } 
       scale <2.5,2.5,2.5>       
       rotate <0,0,0> 
       translate <2.00,0.00,10.00> 
      }
prism { -1.10 ,1.10 , 7
       <-1.05, 0.95>, 
       < 0.00, 1.50>,  
       < 1.05, 0.95>, 
       < 1.05, 1.00>, 
       < 0.00, 1.55>, 
       <-1.05, 1.00>, 
       <-1.05, 0.95>  
       rotate<-90,0,0> scale<1,1,-1>     
              texture{ T_Wood31    
                normal { wood 0.25 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              } 
       scale <2.5,2.5,2.5>        
       rotate <0,0,0> 
       translate <2.00,0.00,10.00> 
      } 
prism { -1.00 ,1.00 , 6
       <-1.00, 0.00>, 
       < 1.00, 0.00>, 
       < 1.00, 1.00>, 
       < 0.00, 1.50>, 
       <-1.00, 1.00>, 
       <-1.00, 0.00>   
       rotate<-90,0,0> scale<1,1,-1> 
       texture{ DMFLightOak 
                normal { wood 0.5 scale 0.3 turbulence 0.1}
                finish { phong 1 } 
                rotate<60,0,45> scale 0.25
              }  
       scale <2.5,2.5,2.5>       
       rotate <0,10,0> 
       translate <10.00,0.00,10.50> 
      } 
prism { -1.10 ,1.10 , 7
       <-1.05, 0.95>,  
       < 0.00, 1.50>,  
       < 1.05, 0.95>, 
       < 1.05, 1.00>, 
       < 0.00, 1.55>, 
       <-1.05, 1.00>, 
       <-1.05, 0.95>  
       rotate<-90,0,0> scale<1,1,-1>  
       material{ texture { Ruby_Glass }  
                   interior{ I_Glass } 
               }
       scale <2.5,2.5,2.5>        
       rotate <0,10,0> 
       translate <10.00,0.00,10.50> 
      }  
prism { -1.00 ,1.00 , 6
       <-1.00, 0.00>,  
       < 1.00, 0.00>, 
       < 1.00, 1.00>, 
       < 0.00, 1.50>, 
       <-1.00, 1.00>, 
       <-1.00, 0.00>   
       rotate<-90,0,0> scale<1,1,-1>       
         texture{ Rust
                  normal { agate 1.5 scale 0.25}
                  
                  scale 0.5
                } 
       scale <2.5,2.5,2.5>       
       rotate <0,0,0> 
       translate <2.00,0.00,-10.00> 
     } 
prism { -1.10 ,1.10 , 7
       <-1.05, 0.95>,  
       < 0.00, 1.50>,  
       < 1.05, 0.95>, 
       < 1.05, 1.00>, 
       < 0.00, 1.55>, 
       <-1.05, 1.00>, 
       <-1.05, 0.95>  
       rotate<-90,0,0> scale<1,1,-1>  
       texture{ T_Wood30    
                normal { wood 0.5 scale 0.05 turbulence 0.0 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              }
       scale <2.5,2.5,2.5>        
       rotate <0,0,0> 
       translate <2.00,0.00,-10.00> 
     } 
prism { -1.00 ,1.00 , 6
       <-1.00, 0.00>,  
       < 1.00, 0.00>, 
       < 1.00, 1.00>, 
       < 0.00, 1.50>, 
       <-1.00, 1.00>, 
       <-1.00, 0.00>   
       rotate<-90,0,0> scale<1,1,-1>   
       texture{ Dark_Wood   
                normal { wood 0.5 scale 0.3 turbulence 0.1}
                finish { phong 1 } 
                rotate<60,0,45> scale 0.125
              }  
       scale <2.5,2.5,2.5>       
       rotate <0,-25,0> 
       translate <13.00,0.00,-7.00> 
     } 
prism { -1.10 ,1.10 , 7
       <-1.05, 0.95>,  
       < 0.00, 1.50>,  
       < 1.05, 0.95>, 
       < 1.05, 1.00>, 
       < 0.00, 1.55>, 
       <-1.05, 1.00>, 
       <-1.05, 0.95> 
       rotate<-90,0,0> scale<1,1,-1>   
       texture{ T_Stone10    
                normal { agate 0.25 scale 0.15 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              }  
       scale <2.5,2.5,2.5>        
       rotate <0,-25,0> 
       translate <13.00,0.00,-7.00> 
     }   
box { <-1.00, 0.00, -1.00>,< 1.00, 2.00, 1.00>   
         texture { T_Grnt15
                   finish { phong 0.5 } 
                   scale 1 
                 }  
      scale <3,5,3> rotate<0,-9,0> translate<-8,0,-1> 
    }  
union{ 
  prism { -1.001 ,1.001 , 4
          <-1.00, 0.00>, 
          < 1.00, 0.00>, 
          < 0.00, 1.50>,
          <-1.00, 0.00>  
          rotate<-90,-80,0> scale<3,2,-3>   
        } 
  prism { -1.001 ,1.001 , 4
         <-1.00, 0.00>,  
         < 1.00, 0.00>, 
         < 0.00, 1.50>, 
         <-1.00, 0.00>   
         rotate<-90,10,0> scale<3,2,-3>   
        } 
 
         texture { T_Grnt15              
                   finish { phong 0.5 } 
                   scale 1 
                 }  
  translate<-8, 9.60, -1> 
}
difference{  
 union{ 
  prism { -1.00 ,1.00 , 4
         <-1.00, 0.00>, 
         < 1.00, 0.00>, 
         < 0.00, 1.50>,
         <-1.00, 0.00>  
         rotate<-90,-80,0> scale<3,2,-3>   
        }
  prism { -1.00 ,1.00 , 4
         <-1.00, 0.00>,  
         < 1.00, 0.00>, 
         < 0.00, 1.50>, 
         <-1.00, 0.00>   
         rotate<-90,10,0> scale<3,2,-3>  
        } 
         texture { pigment{ Jade } 
                   normal { bumps 0.5 scale 0.05}
                   finish { phong 1} 
                   scale 0.25 
                 }  
  translate<-8, 9.60, -1> 
 } 
union{ 
  prism { -1.001 ,1.001 , 4
          <-1.00, 0.00>, 
          < 1.00, 0.00>, 
          < 0.00, 1.50>,
          <-1.00, 0.00>  
          rotate<-90,-90,0>   
        } 
  prism { -1.001 ,1.001 , 4
         <-1.00, 0.00>,  
         < 1.00, 0.00>, 
         < 0.00, 1.50>, 
         <-1.00, 0.00>   
         rotate<-90,0,0> scale<1,1,-1>   
        } 

  texture { pigment{ color White} 
            finish { phong 1.0}
          } 
  }
 scale <1.00, 1.00, 1.00>*1.05
 rotate<0,0,0> 
 translate<0.00, 0.00, 0.00> 
}
height_field{ png "plasma3.png" smooth double_illuminate        
              translate<-0.5, -1,0>
              scale<6,-15, 120> 
  texture { pigment{ color DarkOliveGreen}
            normal { bumps 0.3 scale 0.05}
            finish { phong 0.3}
	  } 
              rotate<0,0,0>
              translate<-20,-8,-60>
            }           
cylinder{ <0,0.0,0>,<0,0.75,0>, 1.00
          open
           texture{ pigment{ color rgb< 1, 0.80, 0.55>*0.8}
          normal { pigment_pattern{ crackle turbulence 0.2
                                    colour_map {[0.00, rgb 0]
                                                [0.25, rgb 1]
                                                [0.95, rgb 1]
                                                [1.00, rgb 0]}
                                    scale 0.15} 1}
           finish  { phong 1 reflection 0.05 }
           translate<5,0,0>
         }
          scale <3,1.10,3> rotate<0,0,0> translate<15,0,2>         
        } 
cylinder { <0,0,0>,<0,2.00,0>, 0.30 

       texture{Polished_Chrome
               normal { crackle 0.5 scale <0.35,0.25,0.25> turbulence 1.0 } 
               finish { reflection 0.60}
              }

           scale <9.90,3.30,9.90> rotate<0,0,0> translate<15,-6.00,2>
         }                                                                       
#declare Dikte=0.001;
#declare Z=-1.5;
#while (Z<=1.5)
#undef jF1
#declare jF1 = function{pattern{julia <0,Z-Dikte>,16 interior 0,1 exterior 1,1}}
isosurface{
function {0.9-jF1(x,y,z)}
contained_by{box{<-2,-2,Z-Dikte>,<2,2,Z+Dikte>}}
accuracy 0.001
max_gradient 150
texture{pigment{agate scale 0.2 color_map{[0.0 OrangeRed][1.0 Red]}} finish{ambient 0.5}}
scale <1,1,1> rotate<90,45,0> translate<4.5,-0.25,0.90>
}
#declare Z = Z+2*Dikte;
#end
light_source {
  <4.5,1,0.90>                 
  color Red      
  spotlight              
  translate <40, 80, -40> 
  point_at <4.5,-0.25,0.90>     
  radius 3                
  tightness 30            
  falloff 5               
}
cylinder { <-1,0,0>,<1,0,0>, 0.30
       texture{ T_Wood7     
                normal { wood 0.5 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              } 
           scale <1.15,1,1.15> rotate<0,0,0> translate<5,0.10,1>
         } 
cylinder { <-1,0,0>,<1,0,0>, 0.30
       texture{ T_Wood7     
                normal { wood 0.5 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              } 
           scale <1.15,1,1.15> rotate<0,90,0> translate<5,0.10,1>
         }         
cylinder { <-1,0,0>,<1,0,0>, 0.30
       texture{ T_Wood7     
                normal { wood 0.5 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              } 
           scale <1.15,1,1.15> rotate<0,45,0> translate<5,0.10,1>
         }  
cylinder { <-1,0,0>,<1,0,0>, 0.30
       texture{ T_Wood7     
                normal { wood 0.5 scale 0.05 turbulence 0.1 rotate<0,0,0> }
                finish { phong 1 } 
                rotate<0,0,0> scale 0.5 translate<0,0,0>
              }
           scale <1.15,1,1.15> rotate<0,-45,0> translate<5,0.10,1>
         } 
         
text { ttf "arial.ttf", "Dark Elf Tower", 0.02, 0.0
         texture{ Rust
                  normal { agate 1.5 scale 0.25}
                  scale 0.5
                }  
       scale<1,1.25,1>*0.8 
       rotate<0,-90,0>
       translate<-3.00,9,-2.75 >
      }   
#declare Random_1 = seed (23484);
#declare Random_2 = seed (35271);
#declare Blade_Radius = 0.003;
#declare Blade_Height = 0.40;
#declare objectPatch =
union{
 #local Nr = 0;  
 #local End = 20; 
 #while (Nr< End) 
     cone{ <0,0,0>,Blade_Radius,
           <0,Blade_Height*(1+0.15*rand(Random_1)),0>,0.001
           texture { pigment{ color rgb< 0.5, 1.0, 0.0>*0.5 }
                     normal { bumps 0.5 scale 0.05 }
                     finish { phong 1 reflection 0.00}
                   }  
           translate<-0.15*rand(Random_2),0,0> 
           rotate<0,0,Nr*10/End> 
           rotate<0,Nr * 360/End+360*rand(Random_2),0>
         } 
 #local Nr = Nr + 1;    
 #end  
rotate<0,0,0>
translate<0,0,0>
} 
#declare lPatch=0.5;               
#declare nxPrairie=12;             
#declare addPatches=1.5;            
#declare nzPrairie=100;            
#declare rd=seed(779);           
#declare stdscale=1.5;              
#declare stdrotate=30;            
#declare doTest=0;
object{MakePrairie(lPatch,nxPrairie,addPatches,nzPrairie,objectPatch,rd,stdscale,stdrotate,doTest)
 scale 1 
 rotate<0,25,0>
 translate<-35,0,-7>
}                       
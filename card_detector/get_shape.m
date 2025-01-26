function shape = get_shape(ROI,img)
              colour_img = imcrop(img,[5 40 25 30]);
              pixel_value = colour_img(15,13,:);
          
          
              if pixel_value(:,:,1) == 255 && pixel_value(:,:,2) == 0 && pixel_value(:,:,3) == 0
                  pixel_value = 'red';
              else
                  pixel_value = 'black';
              end
          
              prop_shape = regionprops(ROI, 'area','Circularity','Eccentricity','Perimeter');
              if length(prop_shape) == 1
                 [Area,Circularity,Eccentricity,~] = deal(prop_shape.Area,prop_shape.Circularity,prop_shape.Eccentricity,prop_shape.Perimeter);
             
                 if contains(pixel_value,'red')
                    if ( 0.8 < Circularity) && (Circularity < 0.85) && (180 < Area) && (Area < 195) 
                        shape = 'heart';                 
                    else 
                        shape = 'diamond';
                    end
                 else 
                    if (0.4 < Eccentricity) && (Eccentricity < 0.5) && (210 < Area) && (Area < 220) 
                        shape = 'spade';
                  
                    else 
                        shape = 'club';
                    end
                 end
              end    
            end
function rank = get_num(ROI)
              prop_num = regionprops(ROI, 'area','Circularity','Eccentricity','Perimeter');
              if length(prop_num) == 2
                  rank = '10';
              elseif length(prop_num) == 1
                        [Area,Circularity,Eccentricity,Perimeter] = deal(prop_num.Area,prop_num.Circularity,prop_num.Eccentricity,prop_num.Perimeter);
                        
                        if     ( 0.3 < Circularity) && (Circularity < 0.4)   && (250 < Area) && (Area < 300) && (95 < Perimeter) && (Perimeter < 100) && (0.73 < Eccentricity) && (Eccentricity < 0.78)
                            rank = '9';
                        elseif ( 0.5 < Circularity) && (Circularity < 0.65)   && (250 < Area) && (Area < 310) && (75 < Perimeter) && (Perimeter < 80) && (0.75 < Eccentricity) && (Eccentricity < 0.8)
                            rank = '8';
                        elseif ( 0.25 < Circularity)&& (Circularity < 0.3)  && (175 < Area) && (Area < 215) && (90 < Perimeter) && (Perimeter < 100) && (0.83 < Eccentricity) && (Eccentricity < 0.88)
                            rank = '7';
                        elseif ( 0.34 < Circularity) && (Circularity < 0.44)   && (190 < Area) && (Area < 230) && (80 < Perimeter) && (Perimeter < 90) && (0.8 < Eccentricity) && (Eccentricity < 0.9)
                            rank = 'ace';
                        elseif ( 0.35 < Circularity) && (Circularity < 0.45)   && (200 < Area) && (Area < 220) && (75 < Perimeter) && (Perimeter < 85) && (0.9 < Eccentricity) && (Eccentricity < 0.95)
                            rank = 'jack';
                        elseif ( 0.45 < Circularity) && (Circularity < 0.55)   && (200 < Area) && (Area < 250) && (70 < Perimeter) && (Perimeter < 80) && (0.75 < Eccentricity) && (Eccentricity < 0.8)
                            rank = 'queen';    
                        elseif ( 0.2 < Circularity) && (Circularity < 0.3)   && (240 < Area) && (Area < 300) && Perimeter > 110
                            rank = 'king';          
                        end
              end
end
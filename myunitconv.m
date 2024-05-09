function [numout, unit, prevUnit] = myunitconv(numin, convtype)
    if convtype == 1 % cels2fahr
        numout = (numin*(9/5))+32;
        unit = 'F';
        prevUnit = 'C';
    elseif convtype == 2 % fahr2cels
        numout = (numin-32)*(5/9);
        unit = 'C';
        prevUnit = 'F';
    elseif convtype == 3 % cm2in
        numout = numin/2.54;
        unit = 'in';
        prevUnit = 'cm';
    elseif convtype == 4 % in2cm
        numout = numin*2.54;
        unit = 'cm';
        prevUnit = 'in';
    elseif convtype == 5 % met2ft
        numout = numin*3.2808;
        unit = 'ft';
        prevUnit = 'm';
    elseif convtype == 6 % ft2met
        numout = numin/3.2808;
        unit = 'm';
        prevUnit = 'ft';
    elseif convtype == 7 % km2mi
        numout = numin/1.6093;
        unit = 'mi';
        prevUnit = 'km';
    elseif convtype == 8 % mi2km
        numout = numin*1.6093;
        unit = 'km';
        prevUnit = 'mi';
    elseif convtype == 9 % gr2oz
        numout = numin/28.3495;
        unit ='oz';
        prevUnit = 'gr';
    elseif convtype == 10 % oz2gr
        numout = numin*28.3495;
        unit = 'gr';
        prevUnit ='oz';
    elseif convtype == 11 % kg2lb
        numout = numin*2.2046;
        unit = 'lb';
        prevUnit = 'kg';
    elseif convtype == 12 % lb2kg
        numout = numin/2.2046;
        unit = 'kg';
        prevUnit = 'lb';
    elseif convtype == 13 % t2LT
        numout = numin/1.0161;
        unit = 'LT';
        prevUnit = 't';
    elseif convtype == 14 % LT2t
        numout = numin*1.0161;
        unit = 't';
        prevUnit = 'LT';
    else
        disp("Invalid conversion type")
    end
end
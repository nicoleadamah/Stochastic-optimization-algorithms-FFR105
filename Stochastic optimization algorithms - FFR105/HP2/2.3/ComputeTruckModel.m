%truck model
function breakingForce = ComputeTruckModel(m, Pp,g, brakeT, maxT, gearNmbr,Cb)
    bForce = [];
    if (brakeT < maxT - 100)
       breakingForce = m * g * Pp / 20; 
    else
       breakingForce = m * g * Pp * exp( -(brakeT - (maxT - 100)) / 100 ) / 20; 
    end
    
    if (gearNmbr == 1)
        engineBrakeForce = 7 * Cb;
        
    elseif (gearNmbr == 2)
        engineBrakeForce = 5 * Cb;
        
    elseif (gearNmbr == 3)
        engineBrakeForce = 4 * Cb;  
        
    elseif (gearNmbr == 4)
        engineBrakeForce = 3 * Cb;
        
    elseif (gearNmbr == 5)
        engineBrakeForce = 2.5 * Cb;
        
    elseif (gearNmbr == 6)
        engineBrakeForce = 2 * Cb;
        
    elseif (gearNmbr == 7)
        engineBrakeForce = 1.6 * Cb;  
        
    elseif (gearNmbr == 8)
        engineBrakeForce = 1.4 * Cb;
        
    elseif (gearNmbr == 9)
        engineBrakeForce = 1.2 * Cb;
        
    elseif (gearNmbr == 10)
        engineBrakeForce =  Cb;       
    end
    bForce = [breakingForce, engineBrakeForce];
end

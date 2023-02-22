function newVelocity = CalculateVelocity(currentVelocity, PersonalBest, GlobalBest, Position, w, c1, rand3, rand4, c2)

    newVelocity = currentVelocity*w + c1*rand3*(PersonalBest-Position) + c2*rand4*(GlobalBest-Position);

end

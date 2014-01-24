function init(args)
  if not args then
    storage.zeroAngle = 0
  end
end

function main()
  local timeOfDay = world.timeOfDay()
  local theta = storage.zeroAngle - (math.pi * 2 * timeOfDay)
  entity.rotateGroup("hand", theta)
end
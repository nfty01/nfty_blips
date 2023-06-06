local blips = {
  {title="Blip", colour=50, id=66, x=601.4164, y=-2736.7671,  z=6.0921},
  {title="Blip", colour=0, id=280, x=2066.0469, y= -895.3384,  z= 81.2300}
}


Citizen.CreateThread(function()

  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 0.8)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)

--title: Name of Blip \\ A BLIP neve
--colour: Color of Blip \\ Blip színe
--id: ID of Blip \\ Blip ID-je
-- x; y; z; Coordinate of Blip \\ Blip koordinátája

-- https://docs.fivem.net/docs/game-references/blips/
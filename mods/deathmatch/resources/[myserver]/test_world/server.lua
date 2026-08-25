local ROAD_MODEL_ID = 1337

addEventHandler("onResourceStart", resourceRoot, function()

    createObject(
        ROAD_MODEL_ID,
        0, 0, 50,
        0, 0, 0
    )

end)

addEventHandler("onPlayerJoin", root, function()

    spawnPlayer(
        source,
        0, 0, 52
    )

    fadeCamera(source, true)
    setCameraTarget(source, source)

end)
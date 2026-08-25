local ROAD_MODEL_ID = 1337

addEventHandler("onClientResourceStart", resourceRoot, function()

    outputChatBox("CLIENT STARTED", 0, 255, 0)

    removeGameWorld()

    -- COL
    local col = engineLoadCOL("models/01.col")

    if not col then
        outputChatBox("ERROR: COL NOT LOADED", 255, 0, 0)
    else
        outputChatBox("COL loaded", 0, 255, 0)

        if engineReplaceCOL(col, ROAD_MODEL_ID) then
            outputChatBox("COL replaced", 0, 255, 0)
        else
            outputChatBox("ERROR: COL replace failed", 255, 0, 0)
        end
    end

    -- TXD
    local txd = engineLoadTXD("models/01.txd")

    if not txd then
        outputChatBox("ERROR: TXD NOT LOADED", 255, 0, 0)
    else
        outputChatBox("TXD loaded", 0, 255, 0)

        if engineImportTXD(txd, ROAD_MODEL_ID) then
            outputChatBox("TXD imported", 0, 255, 0)
        else
            outputChatBox("ERROR: TXD import failed", 255, 0, 0)
        end
    end

    -- DFF
    local dff = engineLoadDFF("models/01.dff")

    if not dff then
        outputChatBox("ERROR: DFF NOT LOADED", 255, 0, 0)
        return
    end

    outputChatBox("DFF loaded", 0, 255, 0)

    if engineReplaceModel(dff, ROAD_MODEL_ID) then
        outputChatBox("DFF REPLACED!", 0, 255, 0)
    else
        outputChatBox("ERROR: DFF replace failed", 255, 0, 0)
    end

end)
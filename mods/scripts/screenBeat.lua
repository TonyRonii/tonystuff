local BeatPorcent = {0}
local cannotBeat = {0}

local SectionPorcent = 0
local cannotBeatInt = false

local BeatStyle = 0
local BeatStrentghGame = 0.026
local BeatStrentghHUD = 0.04
local Beated = false

function onStepHit()
    for BeatsHit = 1,#BeatPorcent do
        if BeatPorcent[BeatsHit] ~= nil and Beated == false then
            if SectionPorcent ~= 0 and (curStep/4) % SectionPorcent == BeatPorcent[BeatsHit] or SectionPorcent == 0 and (curStep/4) % BeatPorcent[BeatsHit] == 0 then
                for beast = 1,#cannotBeat do
                    if cannotBeatInt == true and math.floor(curStep/4) % cannotBeat[beast] ~= 0 or cannotBeatInt == false and (curStep/4) % cannotBeat[beast] ~= 0 then
                        if BeatStyle == 0 then
                            Beated = true
                            triggerEvent('Add Camera Zoom',BeatStrentghGame,BeatStrentghHUD)
                        elseif BeatStyle == 1 then
                            if (curStep/4) % BeatPorcent[BeatsHit] == 0 then
                                triggerEvent('Add Camera Zoom',BeatStrentghGame * BeatValue,BeatStrentghHUD * BeatValue)
                                BeatValue = BeatValue * -1
                                Beated = true
                            end
                        end
                    else
                        Beated = false
                    end
                end
            else
                Beated = false
            end
        else
            Beated = false
        end
    end
    if songName == 'too-slow' then
        if curStep == 793 or curStep == 1432 then
            replaceArrayBeat(1,1)
        end
        if curStep == 1304 then
            clearBeat()
        end
    end
    if songName == 'too-slow-encore' then
        if curStep == 416 then
            replaceArrayBeat(1,1)
        end
        if curStep == 1888 then
            replaceArrayBeat(1,0)
        end
    end

    if songName == 'you-cant-run' or songName == 'you-cant-run-encore' then
        if curStep == 15 then
            replaceArrayBeat(1,2)
        end
    end

    if songName == 'cycles' then
        if curStep == 128 or curStep == 320 or curStep == 1392 or curStep == 1424 then
            replaceArrayBeat(1,2)
        end
        if curStep == 832 or curStep == 1232 then
            replaceArrayBeat(1,1)
        end
        if curStep == 256 or curStep == 1088 or curStep == 1376 or curStep == 1408 or curStep == 1488 then
            replaceArrayBeat(1,0)
        end
    end

    if songName == 'fate' then
        if curStep == 288 or curStep == 1216 or curStep == 2448 then
            replaceArrayBeat(1,2)
        end
        if curStep == 544 or curStep == 1472 then
            replaceArrayBeat(1,1)
        end
        if curStep == 800 or curStep == 1728 then
            replaceArrayBeat(1,0)
        end
    end

    if songName == 'triple-trouble' then
        if curStep == 80 or curStep == 464 or curStep == 1104 or curStep == 1680 or curStep == 1936 or curStep == 2896 or curStep == 3472 or curStep == 3216 or curStep == 4048 then
            clearBeat()
            replaceArrayBeat(1,2)
        end
        if curStep == 112 or curStep == 456 or curStep == 496 or curStep == 740 or curStep == 912 or curStep == 1136 or curStep == 1920 or curStep == 2927 or curStep == 2960 or curStep == 3728 or curStep == 4080 then
            clearBeat()
            replaceArrayBeat(1,1)
        end
        if curStep == 134 or curStep == 400 or curStep == 518 or curStep == 1030 or curStep == 1159 or curStep == 1287 or curStep == 2312 or curStep == 2952 or curStep == 3216 or curStep == 3719 or curStep == 3975 or curStep == 5128 then
            clearBeat()
        end
        if curStep == 144 or curStep == 528 or curStep == 1168 then
            clearBeat()
            SectionPorcent = 4
            replaceArrayBeat(1,1)
            addArray(2,1.5)
            addArray(3,2.5)
            addArray(4,3)
        end
        if curStep == 1296 then
            clearBeat()
            SectionPorcent = 4
            replaceArrayBeat(1,2)
            addArray(2,3.5)
        end
    end

    if songName == 'endless' then
        if curStep == 7 then
            table.insert(BeatPorcent,1,1)
        end
    end

    if songName == 'endless-encore' then
        if curStep == 7 or curStep == 1328 then
            table.insert(BeatPorcent,1,1)
        end
        if curStep == 1584 then
            table.insert(BeatPorcent,1,2)
        end
        if curStep == 1312 or curStep == 1616 then
            table.insert(BeatPorcent,1,0)
        end
    end

    if songName == 'milk' then
        if curStep == 96 or curStep == 144 then
            table.insert(BeatPorcent,1,1)
        end
        if curStep == 119 or curStep == 1694 then
            table.insert(BeatPorcent,1,0)
        end
    end

    if songName == 'milk-old' then
        if curStep == 0 then
            replaceArrayBeat(1,2)
        end
        if curStep == 48 or curStep == 2273 then
            replaceArrayBeat(1,0)
        end
        if curStep == 96 then
            replaceArrayBeat(1,1)
        end
    end
    if songName == 'black-sun' then
        if curStep == 128 or curStep == 512 or curStep == 976 or curStep == 1344 then
            clearBeat()
            replaceArrayBeat(1,1)
        end
        if curStep == 400 then
            clearBeat()
            replaceArrayBeat(1,2)
        end
        if curStep == 128 or curStep == 896 or curStep == 1207 or curStep == 1595 then
           clearBeat()
        end
    end
    if songName == 'Prey' then
        if curStep == 384 or curStep == 1024 or curStep == 2560 then
            replaceArrayBeat(1,2)
            BeatStyle = 1
            BeatValue = -1
            BeatStrentghGame = 0.015
            BeatStrentghHUD = 0.03
        end
        if curStep == 512 or curStep == 1536 or curStep == 2328 or curStep == 3072 then
            replaceArrayBeat(1,1)
            BeatStyle = 0
            BeatValue = 0
            BeatStrentghGame = 0.025
            BeatStrentghHUD = 0.04
        end
        if curStep == 2304 or curStep == 3328 then
            replaceArrayBeat(1,0)
        end
    end

    if songName == 'Fight or Flight' then
        if curStep == 384 or curStep == 1312 then
            replaceArrayBeat(1,2)
        end
        if curStep == 640 or curStep == 1184 or curStep == 1472 then
            replaceArrayBeat(1,1)
        end
        if curStep == 1152 or curStep == 1296 or curStep == 1440 or curStep == 1952 then
            replaceArrayBeat(1,2)
        end
    end

    if songName == 'soulless-orycover' then
        if curStep == 272 then
            replaceArrayBeat(1,1)
        end
        if curStep == 1552 then
            replaceArrayBeat(1,0)
        end
    end

    if songName == 'soulless-nikocover' then
        if curStep == 272 or curStep == 672 then
            replaceArrayBeat(1,2)
        end
        if curStep == 400 or curStep == 1312 then
            replaceArrayBeat(1,1)
        end
        if curStep == 656 or curStep == 1184 or curStep == 1952 then
            replaceArrayBeat(1,0)
        end
    end

    --Unused Songs
    if songName == 'Forestall-Desire' then
        if curStep == 16 then
            SectionPorcent = 4
            replaceArrayBeat(1,2)
        end
        if curStep == 144 or curStep == 1056 then
            SectionPorcent = 4
            replaceArrayBeat(1,1)
            replaceArrayBeat(2,2.5)
            replaceArrayBeat(3,3)
        end
        if curStep == 788 then
            clearBeat()
        end
    end
    if songName == 'Luther' then
        if curStep == 496 or curStep == 1191 or curStep == 1392 or curStep == 1776 then
            clearBeat()
            SectionPorcent = 4
            replaceArrayBeat(1,1)
            addArray(2,1.5)
            addArray(3,2.5)
            addArray(4,3)
        end
        if curStep == 1264 then
            replaceArrayBeat(1,2)
        end
        if curStep == 1136 or curStep == 1200 or curStep == 1520 or curStep == 1904 then
            clearBeat()
        end
    end
    if songName == 'malediction' then
        if curStep == 15 or curStep == 272 or curStep == 431 or curStep == 496 or curStep == 560 then
            clearBeat()
            SectionPorcent = 4
            cannotBeatInt = true
            replaceArrayBeat(1,1)
            addArray(2,2.5)
            addArray(3,3)
        end
        if curStep == 144 or curStep == 720 then
            clearBeat()
            clearCannotBeat()
            replaceArrayBeat(1,1)
            replaceArrayCannotBeat(1,4)
        end
        if curStep == 388 or curStep == 463 or curStep == 528 or curStep == 688 then
            clearBeat()
            clearCannotBeat()
        end
    end
    if songName == 'Burning' then
        if curStep == 384 or curStep == 1280 then
            replaceArrayBeat(1,1)
            replaceArrayCannotBeat(1,4)
        elseif curStep == 128 then
            replaceArrayBeat(1,1)
        end
    end
    if songName == 'Mania' then
        if curStep == 1 or curStep == 736 or curStep == 1472 then
            replaceArrayBeat(1,3)
            SectionPorcent = 4
            --replaceArrayCannotBeat(1,6)
        elseif  curStep == 126 or curStep == 816 or curStep == 824 then
            SectionPorcent = 0
            clearBeat()
            replaceArrayBeat(1,1)
            replaceArrayCannotBeat(1,4)
        end
    end
    if songName == 'sunshine-encore' then
        if curStep == 51 or curStep == 952 or curStep == 1195 then
            replaceArrayBeat(1,1)
            replaceArrayCannotBeat(1,4)
        elseif curStep == 916 or curStep == 1174 or curStep == 1310 then
            replaceArrayBeat(1,0)
        end
    end
end
function addArray(pos,number)
    if pos == nil then
        table.insert(BeatPorcent,#BeatPorcent + 1,number)
    else
        table.insert(BeatPorcent,pos,number)
    end
end
function addCannootBeat(pos,number)
    if pos == nil then
        table.insert(cannotBeat,#cannotBeat + 1,number)
    else
        table.insert(cannotBeat,pos,number)
    end
end
function clearBeat()
    SectionPorcent = 0
    for clearCanBeat = 1,#BeatPorcent do
        table.remove(BeatPorcent,clearCanBeat)
    end
    table.remove(BeatPorcent,1)
    table.insert(BeatPorcent,1,nil)
end
function clearCannotBeat()
    for clearBeatCannot = 2,#cannotBeat do
        table.insert(cannotBeat,clearBeatCannot,nil)
    end
    table.remove(cannotBeat,1)
    table.insert(cannotBeat,1,nil)
end
function removeArrayCannotBeat(pos)
    table.remove(cannotBeat,pos)
end

function removeArrayBeat(pos)
    table.remove(BeatPorcent,pos)
end

function replaceArrayBeat(pos,number)
    table.remove(BeatPorcent,pos)
    table.insert(BeatPorcent,pos,number)
end

function replaceArrayCannotBeat(pos,number)
    table.remove(cannotBeat,pos)
    table.insert(cannotBeat,pos,number)
end
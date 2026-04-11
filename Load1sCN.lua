-- ================== HÀM CHỨC NĂNG ==================

function searchValue(t, regions, vtype)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(regions)
    gg.setVisible(false)
    gg.searchNumber(t[1], vtype)
    
    local baseResults = gg.getResults(5000)
    local finalResults = {}
    
    for i = 1, #baseResults do
        local baseAddr = baseResults[i].address
        local isMatch = true
        
        for j = 2, #t do
            local offset = t[j][2]
            local expectValue = t[j][1]
            local check = gg.getValues({{address = baseAddr + offset, flags = vtype}})
            
            if check[1].value ~= expectValue then
                isMatch = false
                break
            end
        end
        
        if isMatch then
            table.insert(finalResults, {address = baseAddr, flags = vtype})
        end
    end
    return finalResults
end

function applyEdit(results, offset, flags, value)
    if #results == 0 then return end
    local editList = {}
    for i = 1, #results do
        table.insert(editList, {
            address = results[i].address + offset,
            flags = flags,
            value = value,
            freeze = false
        })
    end
    gg.setValues(editList)
    gg.addListItems(editList)
end
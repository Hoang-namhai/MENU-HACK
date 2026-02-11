-- ========== MENU HACK ==========
-- Upload file này lên: https://raw.githubusercontent.com/Hoang-namhai/MENU-HACK/main/menu.lua

-- Biểu tượng trạng thái
on = '[✖]'
off = '[✔]'

-- Trạng thái ban đầu
HNH1 = off
HNH2 = off
HNH3 = off
HNH4 = off
HNH5 = off

function Main()
    menu = gg.choice({
        HNH1 .. " Chức năng 1",
        HNH2 .. " Chức năng 2", 
        HNH3 .. " Chức năng 3",
        HNH4 .. " Chức năng 4",
        HNH5 .. " Chức năng 5",
        "⚠️ Thoát"
    }, nil, "⚡ Tool 5 Chức Năng ⚡")
    
    if menu == 1 then
        HNH1 = (HNH1 == on) and off or on
        OnOff1()
    elseif menu == 2 then
        HNH2 = (HNH2 == on) and off or on
        OnOff2()
    elseif menu == 3 then
        HNH3 = (HNH3 == on) and off or on
        OnOff3()
    elseif menu == 4 then
        HNH4 = (HNH4 == on) and off or on
        OnOff4()
    elseif menu == 5 then
        HNH5 = (HNH5 == on) and off or on
        OnOff5()
    elseif menu == 6 then
        gg.toast("👋 Tạm biệt!")
        os.exit()
    end
    
    HNH = -1
end

function OnOff1()
    if HNH1 == on then
        -- CODE BẬT chức năng 1
        gg.toast('✅ Chức năng 1: BẬT')
    else
        -- CODE TẮT chức năng 1
        gg.toast('❌ Chức năng 1: TẮT')
    end
end

function OnOff2()
    if HNH2 == on then
        gg.toast('✅ Chức năng 2: BẬT')
    else
        gg.toast('❌ Chức năng 2: TẮT')
    end
end

function OnOff3()
    if HNH3 == on then
        gg.toast('✅ Chức năng 3: BẬT')
    else
        gg.toast('❌ Chức năng 3: TẮT')
    end
end

function OnOff4()
    if HNH4 == on then
        gg.toast('✅ Chức năng 4: BẬT')
    else
        gg.toast('❌ Chức năng 4: TẮT')
    end
end

function OnOff5()
    if HNH5 == on then
        gg.toast('✅ Chức năng 5: BẬT')
    else
        gg.toast('❌ Chức năng 5: TẮT')
    end
end

-- Vòng lặp chính
while true do
    if gg.isVisible(true) then
        HNH = 1
        gg.setVisible(false)
    end
    gg.clearResults()
    if HNH == 1 then
        Main()
    end
end

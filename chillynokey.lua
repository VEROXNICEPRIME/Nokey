-- =====================================================================
-- SCRIPT TẠO GIAO DIỆN (UI LIBRARY) - NICE CHEAT
-- Người sở hữu / Chủ sở hữu: nice_cheat
-- Trạng thái: Được bypass key bởi nice cheat
-- =====================================================================

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local OwnerLabel = Instance.new("TextLabel")
local DetailLabel = Instance.new("TextLabel")
local BypassLabel = Instance.new("TextLabel")
local MenuV5Button = Instance.new("TextButton")
local UICornerBtn = Instance.new("UICorner")

-- Thiết lập GUI chính
ScreenGui.Name = "NiceCheatGui"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
MainFrame.Position = UDim2.new(0.5, -190, 0.5, -135)
MainFrame.Size = UDim2.new(0, 380, 0, 270)

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Viền sáng phát quang cho bảng thêm phần sang trọng
UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(80, 80, 255)
UIStroke.Thickness = 1.5

-- Thanh tiêu đề
TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(28, 28, 35)
TopBar.Size = UDim2.new(0, 380, 0, 45)

local TopBarCorner = Instance.new("UICorner")
TopBarCorner.CornerRadius = UDim.new(0, 12)
TopBarCorner.Parent = TopBar

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(0, 300, 0, 45)
Title.Font = Enum.Font.GothamBold
Title.Text = "⚡ NICE CHEAT - HUB ⚡"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Phần thông tin chi tiết & Chủ sở hữu
OwnerLabel.Name = "OwnerLabel"
OwnerLabel.Parent = MainFrame
OwnerLabel.BackgroundTransparency = 1
OwnerLabel.Position = UDim2.new(0, 20, 0, 60)
OwnerLabel.Size = UDim2.new(0, 340, 0, 25)
OwnerLabel.Font = Enum.Font.GothamBold
OwnerLabel.Text = "👤 Người sở hữu: nice_cheat"
OwnerLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
OwnerLabel.TextSize = 14
OwnerLabel.TextXAlignment = Enum.TextXAlignment.Left

DetailLabel.Name = "DetailLabel"
DetailLabel.Parent = MainFrame
DetailLabel.BackgroundTransparency = 1
DetailLabel.Position = UDim2.new(0, 20, 0, 90)
DetailLabel.Size = UDim2.new(0, 340, 0, 25)
DetailLabel.Font = Enum.Font.Gotham
DetailLabel.Text = "📌 Chi tiết: Phiên bản tối ưu hóa đầy đủ tính năng."
DetailLabel.TextColor3 = Color3.fromRGB(210, 210, 210)
DetailLabel.TextSize = 13
DetailLabel.TextXAlignment = Enum.TextXAlignment.Left

BypassLabel.Name = "BypassLabel"
BypassLabel.Parent = MainFrame
BypassLabel.BackgroundTransparency = 1
BypassLabel.Position = UDim2.new(0, 20, 0, 120)
BypassLabel.Size = UDim2.new(0, 340, 0, 25)
BypassLabel.Font = Enum.Font.GothamMedium
BypassLabel.Text = "🔓 Trạng thái: Được bypass key bởi nice cheat"
BypassLabel.TextColor3 = Color3.fromRGB(255, 180, 0)
BypassLabel.TextSize = 13
BypassLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Nút Bấm
MenuV5Button.Name = "MenuV5Button"
MenuV5Button.Parent = MainFrame
MenuV5Button.BackgroundColor3 = Color3.fromRGB(0, 130, 255)
MenuV5Button.Position = UDim2.new(0, 20, 0, 175)
MenuV5Button.Size = UDim2.new(0, 340, 0, 55)
MenuV5Button.Font = Enum.Font.GothamBold
MenuV5Button.Text = "đã hiểu + admin đẹp trai vcl"
MenuV5Button.TextColor3 = Color3.fromRGB(255, 255, 255)
MenuV5Button.TextSize = 14

UICornerBtn.CornerRadius = UDim.new(0, 10)
UICornerBtn.Parent = MenuV5Button

-- Hiệu ứng bóng đổ nhẹ cho nút bấm
local ButtonStroke = Instance.new("UIStroke")
ButtonStroke.Parent = MenuV5Button
ButtonStroke.Color = Color3.fromRGB(100, 190, 255)
ButtonStroke.Thickness = 1

-- Xử lý sự kiện khi bấm nút
MenuV5Button.MouseButton1Click:Connect(function()
    MenuV5Button.Text = "chúc chơi vui vẻ"
    MenuV5Button.BackgroundColor3 = Color3.fromRGB(40, 180, 80)
    task.wait(0.5)
    
    -- Chạy đoạn loadstring theo yêu cầu
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VEROXNICEPRIME/nicecheat/refs/heads/main/chiily.lua"))()
    end)
    
    if success then
        task.wait(0.8)
        ScreenGui:Destroy() -- Xóa giao diện sau khi chạy xong
    else
        MenuV5Button.Text = "Lỗi tải script!"
        MenuV5Button.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
        warn("Lỗi loadstring: ", err)
    end
end)

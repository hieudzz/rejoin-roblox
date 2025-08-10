#!/bin/bash
# Tool Rejoin Roblox - Auto Setup cho Termux
pkg="com.roblox.client"

banner() {
    clear
    echo "==============================="
    echo "🔄 Tool Rejoin Roblox (Termux)"
    echo "==============================="
    echo ""
    echo "1) Rejoin server mới"
    echo "2) Rejoin đúng server cũ"
    echo "3) Thoát Roblox"
    echo "4) Mở Roblox"
    echo "0) Thoát"
}

rejoin_new() {
    read -p "Nhập PlaceId: " place_id
    am force-stop $pkg
    sleep 2
    am start -a android.intent.action.VIEW -d "roblox://placeId=$place_id"
}

rejoin_old() {
    read -p "Nhập PlaceId: " place_id
    read -p "Nhập JobId: " job_id
    am force-stop $pkg
    sleep 2
    am start -a android.intent.action.VIEW -d "roblox://placeId=$place_id&jobId=$job_id"
}

while true; do
    banner
    read -p "Chọn: " choice
    case $choice in
        1) rejoin_new ;;
        2) rejoin_old ;;
        3) am force-stop $pkg ;;
        4) am start -n "$pkg/com.roblox.client.ActivityNativeMain" ;;
        0) exit ;;
        *) echo "❌ Sai lựa chọn" ;;
    esac
    read -p "Nhấn Enter để tiếp tục..."
done

import QtQuick
import QtQuick.Window
import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Tesla UI")

    LeftScreen{
        id: leftScreen
    }

    RightScreen{
        id : rightScreen
    }

    BottomBar{
        id : bottomBar
    }
}

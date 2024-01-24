import QtQuick 2.0

Rectangle{
    id: leftScreen
    anchors{
        left: parent.left
        bottom: bottomBar.top
        top: parent.top
        right: rightScreen.left
    }
    color: "white"

    Image{
        id: carRender
        anchors.centerIn: parent
        width: parent.width * .85
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/carRender.jpg"
    }
}

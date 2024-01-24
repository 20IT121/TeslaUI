import QtQuick 2.15

Rectangle {
    id: bottomBar
    anchors{
        left : parent.left
        right : parent.right
        bottom : parent.bottom
    }
    color : "black"
    height : parent.height/12

    Image{
        id: carLogo
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 30
        }
        height: parent.height * .85
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/car.png"
    }
}

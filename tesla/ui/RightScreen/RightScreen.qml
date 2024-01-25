import QtQuick
import QtLocation
import QtPositioning

Rectangle{
    id: rightScreen
    anchors{
        top : parent.top
        right : parent.right
        bottom : bottomBar.top
    }
    width : parent.width * 2/3

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(34.05, -118.24) // LA
        zoomLevel: 14
    }

    Image {
        id: lock
        anchors{
            left: parent.left
            top: parent.top
            margins: 9
        }
        width: parent.width/30
        fillMode: Image.PreserveAspectFit
        source: {
            systemHandler.carLocked ?
                "qrc:/ui/assets/lock.png" : "qrc:/ui/assets/unlock.png"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: systemHandler.setcarLocked(!systemHandler.carLocked)
        }
    }

    Text{
        id: timeDisplay
        anchors{
            left: lock.right
            bottom: lock.bottom
            leftMargin: 40
        }
        font.pixelSize: 15
        font.bold: true
        color: "black"

        text: systemHandler.currentTime
    }

    Text{
        id: tempDisplay
        anchors{
            left: timeDisplay.right
            bottom: timeDisplay.bottom
            leftMargin: 40
        }
        font.pixelSize: 15
        font.bold: true
        color: "black"

        text: systemHandler.outdoorTemp + "°C"
    }

    Image{
        id: userImg
        anchors{
            left: tempDisplay.right
            bottom: tempDisplay.bottom
            leftMargin: 40
        }
        fillMode: Image.PreserveAspectFit
        width: parent.width/40
        source: "qrc:/ui/assets/user.png"
    }

    Text{
        id: userNameDisplay
        anchors{
            left: userImg.right
            bottom: userImg.bottom
            leftMargin: 7
        }
        font.pixelSize: 15
        font.bold: true
        color: "black"

        text: systemHandler.userName
    }
}

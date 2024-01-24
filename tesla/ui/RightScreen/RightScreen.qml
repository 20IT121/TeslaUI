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
}

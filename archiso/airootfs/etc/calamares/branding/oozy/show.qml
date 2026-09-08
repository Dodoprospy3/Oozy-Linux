import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.AllButtons
        onClicked: presentation.goToNextSlide()
    }
    Timer {
        interval: 8000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    Slide {
        anchors.fill: parent
        Rectangle { anchors.fill: parent; color: "#0E1A22" }
        Column {
            anchors.centerIn: parent
            spacing: 16
            Text {
                text: "Oozy Linux"
                color: "#7EE0D6"
                font.pixelSize: 42
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: "Arch, but for sane people."
                color: "#E8F4F8"
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: "Start as goo. Learn Linux. Evolve."
                color: "#A8C5CF"
                font.pixelSize: 16
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
    Slide {
        anchors.fill: parent
        Rectangle { anchors.fill: parent; color: "#0E1A22" }
        Column {
            anchors.centerIn: parent
            spacing: 12
            Text { text: "KDE Plasma"; color: "#7EE0D6"; font.pixelSize: 32; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
            Text { text: "A friendly desktop with the full power of Arch underneath."; color: "#E8F4F8"; font.pixelSize: 16; anchors.horizontalCenter: parent.horizontalCenter }
        }
    }
    Slide {
        anchors.fill: parent
        Rectangle { anchors.fill: parent; color: "#0E1A22" }
        Column {
            anchors.centerIn: parent
            spacing: 12
            Text { text: "You can leave later."; color: "#7EE0D6"; font.pixelSize: 32; font.bold: true; anchors.horizontalCenter: parent.horizontalCenter }
            Text { text: "Oozy exists to teach you Linux, not to trap you."; color: "#E8F4F8"; font.pixelSize: 16; anchors.horizontalCenter: parent.horizontalCenter }
        }
    }
}

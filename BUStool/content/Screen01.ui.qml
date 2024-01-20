/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import BUStool

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 203
        height: 129
        color: "#000000"

        border.width: 15

        Text {
            id: text1
            x: 0
            y: 0
            width: 203
            height: 129
            color: "#00ff00"
            text: qsTr("只今")
            font.pixelSize: 100
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            lineHeight: 100
            font.italic: false
            style: Text.Outline
            font.capitalization: Font.AllUppercase
            renderType: Text.QtRendering
            font.wordSpacing: 5.9
            font.bold: true
            font.weight: Font.Bold
            font.family: "Tahoma"
        }
    }
}

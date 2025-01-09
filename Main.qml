import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "."

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: "Darkmode And Light Mode"

    AppTheme
    {
        id: appTheme
    }

    Component.onCompleted: appTheme.setLightTheme()

    Rectangle
    {
        width: parent.width
        height: parent.height
        color: appTheme.backgroundcolor

        Switch
        {
            id: themeSwich
            text: "Light Mode"
            anchors.top: parent.top
            checked: false
            anchors.horizontalCenter: parent.horizontalCenter

            contentItem: Text {
                text: themeSwich.checked ? "Dark Mode" : "Light Mode"
                color: appTheme.textcolor
                verticalAlignment: Text.AlignVCenter
                leftPadding: themeSwich.indicator.width + themeSwich.spacing
                font.pointSize: 15
            }

            onCheckedChanged:
            {
                if (checked)
                {
                    appTheme.setDarkTheme()
                }
                else
                {
                    appTheme.setLightTheme()
                }
            }
        }

        ColumnLayout
        {

            anchors.centerIn: parent

            Text
            {
                Layout.preferredWidth: 200
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                id: myText
                text: qsTr("Qt With Ketan")
                color: appTheme.textcolor
                font.pointSize: 20
            }

            Button
            {
                Layout.preferredWidth: 200
                Layout.preferredHeight: 100
                Layout.alignment: Qt.AlignHCenter
                id: myButton
                Text
                {
                    text: "Qt With Ketan"
                    color: appTheme.buttontextcolor
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle
                {
                    color: appTheme.buttonbackgroundcolor
                    radius: 20
                }

            }
        }

    }
}

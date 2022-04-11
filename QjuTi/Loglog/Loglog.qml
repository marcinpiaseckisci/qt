import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    property string login: "loglog"
    property string password: "1234"
    Column
    {

        spacing: 50

        anchors.centerIn: parent
        width: 300
        height: 500

        Text
        {
            text: qsTr("Loughin or not loughin")
            color: "#28536B"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 50
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
            color: "#F6F0ED"
            id: tekstlogin
            text: qsTr("Login:")
        }


        TextField
        {
            anchors.horizontalCenter: parent.horizontalCenter
            id: login
            width: 200
            height: 40

            font.family: "Arial"
            font.pointSize: 20
            focus: true
            textColor: "#28536B"
            Rectangle
            {
                anchors.fill: parent
                color: "white"
                opacity: 0.3
            }
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#F6F0ED"
            font.pointSize: 20
            id: teksthaslo
            text: qsTr("Haswow:")
        }


        TextField
        {
            inputMethodHints: Qt.ImhHiddenText
            anchors.horizontalCenter: parent.horizontalCenter
            id: haslo
            width: 200
            height: 40
            textColor: "#BBB193"
            font.family: "Arial"
            font.pointSize: 20
            focus: true
            echoMode:TextInput.Password

        }

        Button
        {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Loglog"
            width: 100
            height: 50
            onClicked:
            {
                if (login.displayText === "loglog" && haslo.text === "1234")
                {
                    wynik.opacity = 1
                    wynik.text = qsTr("Loughin")
                    wynik.color = "#28536B"
                }
                else
                {
                    wynik.opacity = 1
                    wynik.text = qsTr("Not loughin")
                    wynik.color = "#28536B"
                }
            }
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            id: wynik
            text: qsTr("")
            opacity: 0
            font.pointSize: 40
            font.family: "Consolas"
        }
    }
}

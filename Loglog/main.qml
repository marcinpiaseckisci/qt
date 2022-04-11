import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    width: 1024
    height: 800
    visible: true
    title: qsTr("Loglog")
    color: "#7EA8BE"
    Loglog
    {
        anchors.centerIn: parent
    }
}

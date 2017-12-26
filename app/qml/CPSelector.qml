import QtQuick 2.0
import "Resources.js" as R
Rectangle
{
    width: opt.ds ? R.design_size_width : parent.width
    height: opt.ds ? R.dp(200) : parent.height
    signal evtSelect()
    id: combBox
    radius: 5
    border.width: 1
    property string selectedItemText: "여기를 눌러 특성을 선택하세요."
    property int selectedItemNo: 0
    color: ma.pressed ? R.color_buttonPressed : "white"

    CPText
    {
        width: parent.width
        height: R.dp(100)
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors
        {
            verticalCenter: parent.verticalCenter
        }

        font.pointSize: R.pt(18)
        text: selectedItemText
    }

    MouseArea
    {
        id: ma
        width: parent.width
        height: parent.height
        onClicked:
        {
              evtSelect()
        }
    }
}

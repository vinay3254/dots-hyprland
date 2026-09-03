import qs.modules.common
import QtQuick
import QtQuick.Controls

/**
 * Apple macOS Style Switch
 */
Switch {
    id: root
    property real scale: 0.8
    implicitHeight: 28
    implicitWidth: 48
    property color activeColor: "#34C759" // Apple System Green
    property color inactiveColor: "#2C2C2E" // Dark Track

    PointingHandInteraction {}

    // Custom track styling
    background: Rectangle {
        width: parent.width
        height: parent.height
        radius: Appearance?.rounding.full ?? 9999
        color: root.checked ? root.activeColor : root.inactiveColor
        border.width: 1
        border.color: root.checked ? root.activeColor : "rgba(255, 255, 255, 0.08)"

        Behavior on color {
            ColorAnimation {
                duration: 200
                easing.type: Easing.BezierSpline
                easing.bezierCurve: [0.16, 1.0, 0.3, 1.0, 1, 1]
            }
        }
    }

    // Custom thumb knob styling (Apple smooth sliding spring)
    indicator: Rectangle {
        width: 22
        height: 22
        radius: 11
        color: "#FFFFFF"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: root.checked ? (parent.width - width - 3) : 3

        Behavior on anchors.leftMargin {
            NumberAnimation {
                duration: 220
                easing.type: Easing.BezierSpline
                easing.bezierCurve: [0.34, 1.45, 0.64, 1.0, 1, 1] // Apple Spring
            }
        }
    }
}

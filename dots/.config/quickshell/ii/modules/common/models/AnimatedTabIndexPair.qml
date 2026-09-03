import QtQuick

// idx1 is the "leading" indicator edge, idx2 is the "following" edge
// Elastic spring chasing physics (Safari tab morphing / macOS active pill physics)
QtObject {
    id: root
    required property int index

    property real idx1: index
    property real idx2: index
    property int idx1Duration: 160
    property int idx2Duration: 300

    Behavior on idx1 {
        NumberAnimation {
            duration: root.idx1Duration
            easing.type: Easing.BezierSpline
            easing.bezierCurve: [0.16, 1.0, 0.3, 1.0, 1, 1] // Fluid leading edge
        }
    }
    Behavior on idx2 {
        NumberAnimation {
            duration: root.idx2Duration
            easing.type: Easing.BezierSpline
            easing.bezierCurve: [0.34, 1.45, 0.64, 1.0, 1, 1] // Elastic following spring overshoot
        }
    }
}

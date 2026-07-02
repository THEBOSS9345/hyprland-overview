import QtQuick
import QtQuick.Effects
import ".."

RectangularShadow {
    required property var target
    anchors.fill: target
    radius: 20
    blur: 0.4 * Appearance.sizes.elevationMargin
    offset: Qt.vector2d(0.0, 2.0)
    spread: 0.15
    color: ColorUtils.applyAlpha(Appearance.colors.colShadow, 0.4)
    cached: true
}

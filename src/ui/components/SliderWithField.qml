// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright © 2021-2022 Adrian <adrian.eddy at gmail>

import QtQuick
import QtQuick.Controls as QQC

Row {
    id: root;
    spacing: 5 * dpiScale;
    height: 25 * dpiScale;
    property alias slider: slider;
    property alias field: field;
    property alias value: field.value;
    property alias defaultValue: field.defaultValue;
    property alias from: slider.from;
    property alias to: slider.to;
    property alias live: slider.live;
    property alias unit: field.unit;
    property alias precision: field.precision;

    Slider {
        id: slider;
        width: parent.width - field.width - root.spacing;
        anchors.verticalCenter: parent.verticalCenter;
        property bool preventChange: false;
        onValueChanged: if (!preventChange) field.value = value;
        unit: field.unit;
        precision: field.precision;
    }
    NumberField {
        id: field;
        width: 50 * dpiScale;
        height: 25 * dpiScale;
        precision: 3;
        font.pixelSize: 11 * dpiScale;
        anchors.verticalCenter: parent.verticalCenter;
        onValueChanged: {
            slider.preventChange = true;
            slider.value = value;
            Qt.callLater(() => { if (slider) slider.preventChange = false; });
        }
    }
}

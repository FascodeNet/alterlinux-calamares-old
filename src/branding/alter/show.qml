/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */


/*
 * Slides images dimensions are 800x440px.
 */

import QtQuick 2.12;
import calamares.slideshow 1.0;

import "texts.js" as Texts;

Presentation {
    id: presentation
    /*
     * values
     */
    property color color_title_end:   "#FF2256a4"
    property color color_title_begin: "#002256a4"
    property color color_desc_end:    "#FFd8d8d8"
    property color color_desc_begin:  "#00d8d8d8"
    property color color_background:  "#090909"

    property var time_fadein: 250
    property var time_fadeout: 500

    property int index: 0
    property int change_status: 0

    /*
     * Fonts
     */
    FontLoader {
        id: font_title
        source: Qt.resolvedUrl("./fonts/Raleway.ttf")
    }
    FontLoader {
        id: font_desc
        source: Qt.resolvedUrl("./fonts/NotoSansJP-Light.otf")
    }

    Rectangle {
        color: color_background
        anchors.fill: parent
        MouseArea {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onPressed: {
                if (pressedButtons == Qt.LeftButton)
                    slide.change_slide(1)
                else if (pressedButtons == Qt.RightButton)
                    slide.change_slide(-1)
            }
        }
    }
    Timer {
        id: timer_auto_change_slide
        interval: 20000
        running: true
        repeat: true
        onTriggered: slide.change_slide(1)
    }
    Timer {
        id: animation_interval
        interval: time_fadeout
        running: false
        repeat: false
        onTriggered: slide.second_change_slide()
    }

    /*
     * Slide
     */
    Slide {
        id: slide
        Text {
            id: title
            text: Texts.titles[index]
            color: color_title_begin
            width: parent.width
            wrapMode: Text.WordWrap
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            // font.styleName: "Black"
            font.weight: Font.Bold
            font.family: font_title.name
            font.pixelSize: 40
            font.underline: true
            font.letterSpacing: 10
            // Animation
            SequentialAnimation on color {
                id: title_fadein
                PauseAnimation { duration: 500 }
                ColorAnimation {
                    to: color_title_end
                    duration: time_fadein
                }
            }
            SequentialAnimation on color {
                id: title_fadeout
                ColorAnimation {
                    to: color_title_begin
                    duration: time_fadeout
                }
            }
        }
        Text {
            id: desc
            text: Texts.descriptions[index]
            color: color_desc_begin
            width: parent.width
            wrapMode: Text.WordWrap
            lineHeight: 1.15
            anchors.top: parent.top
            anchors.left:  parent.left
            anchors.topMargin: 70
            font.family: font_desc.name
            font.pixelSize: 16
            font.letterSpacing: {
                console.log(Qt.locale().name)
                Qt.locale().name == "ja_JP"? 0.1 : 1.5
            }
            // Animation
            SequentialAnimation on color {
                id: desc_fadein
                PauseAnimation { duration: 1500 }
                ColorAnimation {
                    to: color_desc_end
                    duration: time_fadein
                }
            }
            SequentialAnimation on color {
                id: desc_fadeout
                ColorAnimation {
                    to: color_desc_begin
                    duration: time_fadeout
                }
            }
        }
        function go_next_slide() {
            if (index == Texts.titles.length-1)
                index = 0
            else
                ++index
        }
        function go_previous_slide() {
            if (index == 0)
                index = Texts.titles.length-1
            else
                --index
        }
        function change_slide(value) {
            timer_auto_change_slide.stop()
            desc_fadein.stop()
            title_fadein.stop()
            desc_fadeout.stop()
            title_fadeout.stop()
            // fadeout
            desc_fadeout.start()
            title_fadeout.start()
            // Wait
            change_status = value
            animation_interval.restart()
        }
        function second_change_slide() {
            timer_auto_change_slide.restart();
            if (change_status == 1)
                go_next_slide()
            else
                go_previous_slide()
            // fadein
            desc_fadein.start()
            title_fadein.start()
            change_status = 0
        }
    }

    // logo
    AnimatedImage {
        id: logo
        source: "loop.gif"
        height: 60
        fillMode: Image.PreserveAspectFit
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 15
    }
}

import QtQuick

QtObject
{
    property color backgroundcolor: "#FFFFFF"
    property color textcolor: "#2f3640"
    property color buttontextcolor: "#FFFFFF"
    property color buttonbackgroundcolor: "#2f3640"

    function setLightTheme()
    {
        backgroundcolor = "#FFFFFF"
        textcolor = "#2f3640"
        buttontextcolor = "#FFFFFF"
        buttonbackgroundcolor = "#2f3640"
    }
    function setDarkTheme()
    {
        backgroundcolor = "#2f3640"
        textcolor= "#FFFFFF"
        buttontextcolor = "#2f3640"
        buttonbackgroundcolor = "#FFFFFF"
    }
}

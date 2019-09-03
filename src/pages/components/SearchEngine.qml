import QtQuick 2.0
import Sailfish.Browser 1.0

IconFetcher {
    property bool available
    property string get
    property string href
    property string title

    function addSearchEngine() {
        console.log("***!!!*** fetch: " + href)
        fetch(href);
    }

    onStatusChanged: {
        console.log("***!!!*** fetcher status: " + status)
        if (status == IconFetcher.Ready) {
            saveSearchEngineXml()
        }
    }
}

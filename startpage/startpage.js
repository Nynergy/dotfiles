// CONSTANTS
const TIME_STRINGS = ["Night", "Morning", "Afternoon", "Evening"];
const NAME = "Benjamin";

// LINK MAP
const LINK_MAP = [
    {
        "groupName": "General",
        "links": [
            { "name": "Gmail", "url": "https://mail.google.com", "icon": "fas fa-envelope" },
            { "name": "GitHub", "url": "https://github.com", "icon": "fab fa-github" },
            { "name": "Evernote", "url": "https://www.evernote.com/Home.action", "icon": "fab fa-evernote" },
            { "name": "Google Drive", "url": "https://drive.google.com/drive/my-drive", "icon": "fab fa-google-drive" }
        ]
    },
    {
        "groupName": "School",
        "links": [
            { "name": "Bmail", "url": "https://mail.google.com/mail/u/1/", "icon": "fas fa-envelope" },
            { "name": "Dashboard", "url": "https://my.binghamton.edu", "icon": "fas fa-tachometer-alt" },
            { "name": "MyCourses", "url": "https://mycourses.binghamton.edu", "icon": "fas fa-book" }
        ]
    },
    {
        "groupName": "Work",
        "links": [
            { "name": "Graphene", "url": "https://my.binghamton.edu/admin", "icon": "fas fa-tools" },
            { "name": "Hermes API", "url": "https://my.binghamton.edu/admin/apiserver/hermesdp/environments", "icon": "fas fa-database" }
        ]
    },
    {
        "groupName": "Entertainment",
        "links": [
            { "name": "SIREN Player", "url": "http://192.168.0.188:9000", "icon": "fas fa-music" },
            { "name": "r/unixporn", "url": "https://reddit.com/r/unixporn", "icon": "fab fa-reddit" },
            { "name": "YouTube", "url": "https://youtube.com", "icon": "fab fa-youtube" },
            { "name": "Lexica Chromatica", "url": "https://lexicachromatica.xyz", "icon": "fas fa-feather-alt" }
        ]
    }
];

// Initiate a Google Search when the search bar is used
function search(event) {
    var x = event.key;
    if (x == "Enter") {
        event.preventDefault()
        let text = document.getElementById("searchbar").value;
        url = 'https://google.com/search?q=' + text
        window.open(url, '_self');
    }
}

// Determine what part of the day it is, and construct a greeting string
function setupGreeting() {
    let hours = new Date().getHours();
    let index = Math.floor(hours / 6);
    let timeString = TIME_STRINGS[index];
    let greetingString = "Good " + timeString + ", " + NAME;

    let greetingContainer = document.getElementById("greeting");
    greetingContainer.innerHTML = greetingString;
}

// Dynamically create groups of links from a LINK_MAP
function setupGroups() {
    let linkContainer = document.getElementById("link-container");

    for(let group of LINK_MAP) {
        let groupContainer = document.createElement("div");
        groupContainer.className = "group-container";
        linkContainer.appendChild(groupContainer);

        let groupHeader = document.createElement("h3");
        groupHeader.innerHTML = group.groupName;
        groupHeader.className = `group-header header-${group.groupName}`;
        groupContainer.appendChild(groupHeader);

        for(let link of group.links) {
            let badge = document.createElement("div");
            badge.className = "badge";
            groupContainer.appendChild(badge);

            let linkIcon = document.createElement("i");
            linkIcon.className = link.icon + " badge-icon";
            badge.appendChild(linkIcon);

            let linkTag = document.createElement("a");
            linkTag.innerHTML = link.name;
            linkTag.setAttribute("href", link.url);
            linkTag.className = "badge-link";
            badge.appendChild(linkTag);

            badge.addEventListener("click", handleClick)

            function handleClick(event) {
                const isTextSelected = window.getSelection().toString();
                if(!isTextSelected) {
                    linkTag.click();
                }
            }
        }
    }
}

function main() {
    setupGreeting();
    setupGroups();
}

main();

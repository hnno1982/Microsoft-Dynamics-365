function HideNavigationActivities() {
    Xrm.Page.ui.navigation.items.forEach(function (item, index) {
        var itemLabel = item.getLabel();
        if (itemLabel == "Campaign Responses"

        || itemLabel == "Target Products"

        || itemLabel == "Products"

        || itemLabel == "Documents"

        || itemLabel == "Sales Literature"

        || itemLabel == "Social Profiles"

        || itemLabel == "Feedback"

        || itemLabel == "Accounts"

        || itemLabel == "Bookable Resource Bookings"
        || itemLabel == "Bookable Resource Characteristics"
        || itemLabel == "Bookable Resource Category Assns"
        || itemLabel == "Background Processes"
        || itemLabel == "Real-time Processes"
        )
        
        {
            item.setVisible(false);
        }
    });
}




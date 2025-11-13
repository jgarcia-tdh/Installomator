8x8)
    # credit: #D-A-James from MacAdmins Slack and Isaac Ordonez, Mann consulting (@mannconsulting)
    name="8x8 Work"
    type="dmg"
    downloadURL=$(curl -fs -L https://work-desktop-assets.8x8.com/prod-publish/ga | grep -m 1 -o "https.*dmg" | sed 's/\"//' | awk '{print $1}')
    # As for appNewVersion, it needs to be checked for newer version than 7.2.4
    appNewVersion=$(curl -fs -L https://work-desktop-assets.8x8.com/prod-publish/ga | grep -m 1 -o "https.*dmg" | sed 's/\"//' | awk '{print $1}' | sed -E 's/.*-v([0-9\.]*)[-\.]*.*/\1/' )
    expectedTeamID="FC967L3QRG"
    ;;

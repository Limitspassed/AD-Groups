# Define the path of the OU to search
$ouPath = "Enter OU Path"

# Define the path where to save the CSV 
$csvFilePath = "C:\path-to-save"

# Get a list of all the groups in the specific OU either by full group name or subset of groups
$groups = Get-ADGroup -Filter {Name -like "group name or wildcard"} -SearchBase $ouPath

# Empty array to hold the group information
$groupInfo = @()

# loop through each group in the OU that starts with dvg
foreach ($group in $groups) {

    # Get a list of all the users in the group
    $users = Get-ADGroupMember -Identity $group.Name | Where-Object {$_.ObjectClass -eq 'user'} | Select-Object -ExpandProperty Name

    # Get a list of all the computers in the group
    $computers = Get-ADGroupMember -Identity $group.Name | Where-Object {$_.ObjectClass -eq 'computer'} | Select-Object -ExpandProperty Name

    # Add the group, user, and computer information to the array
    $groupInfo += [PSCustomObject]@{
        GroupName = $group.Name
        Users = $users -join "`r`n"
        Computers = $computers -join "`r`n"
    }
}

# Export the group information to a CSV file
$groupInfo | Export-Csv -Path $csvFilePath -NoTypeInformation

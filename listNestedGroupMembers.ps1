function Get-NestedGroupMembers {
    param (
        [string]$GroupName
    )
    $members = Get-ADGroupMember -Identity $GroupName
    foreach ($member in $members) {
        if ($member.objectClass -eq "group") {
            Get-NestedGroupMembers -GroupName $member.Name
        } else {
            Write-Host "Member: $($member.Name) - $($member.SamAccountName)"
        }
    }
}

Get-NestedGroupMembers -GroupName "GroupName"

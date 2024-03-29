Attribute VB_Name = "Module1"
' Step I: Count the number of Hornets Found
' Step II: Each time you find Hornets replace them with Bugs
' Step III: You have a max amount of Bees and Hornets, utilize no more than what's provided.
'           If there are still hornets left, provide the user with a message stating: "Oh no! We still have hornets..."

Sub HW_Task1_HornestsNest()

  ' Create a variable to hold the number of hornets
  Dim HornetsCount As Integer

  ' Create a variable to hold the number of bugs and bees
  Dim BugsCount As Integer
  Dim BeesCount As Integer

  ' Set the value of Bugs and Bees counters
  BugsCount = 10
  BeesCount = 5

  ' Set the initial value for the HornetsCount to 0
 HornetsCount = 0

  ' Loop through all rows and columns
  For i = 1 To 6
    For j = 1 To 7
        If Cells(i, j).Value = "Hornets" Then
            HornetsCount = HornetsCount + 1
            If HornetsCount <= BugsCount Then
                Cells(i, j).Value = "Bugs"
            ElseIf HornetsCount <= BugsCount + BeesCount Then
                Cells(i, j).Value = "Bees"
            End If
        End If
    Next j

Next i


  ' Display a MsgBox and show the number of hornets found
  MsgBox ("Number of Hornets: " & HornetsCount)
  

  ' Create the final message if we still have hornets
  If HornetsCount > BugsCount + BeesCount Then
    
    MsgBox ("Oh no! We still have hornets...")
    
  End If
End Sub


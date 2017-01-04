Attribute VB_Name = "Update_SEQ"
Sub UpdateAll()
    Dim oStory As Range
    For Each oStory In ActiveDocument.StoryRanges
        oStory.Fields.Update
        If oStory.StoryType <> wdMainTesxtstory Then
            While Not (oStory.NextStoryRange Is Nothing)
                Set oStory = oStory.NextStoryRange
                oStory.Fields.Update
            Wend
        End If
    Next oStory
    Set oStory = Nothing
End Sub

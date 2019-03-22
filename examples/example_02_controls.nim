# This example shows several controls of NiGui.

import ../src/nigui

app.init()

var window = newWindow()

var container = newLayoutContainer(Layout_Vertical)
window.add(container)

# Add a Button control:
var button = newButton("Button")
container.add(button)

# Add a ToggleButton control:
var toggleButton = newToggleButton("ToggleButton")
container.add(toggleButton)

# Add a CheckBox control:
var checkBox = newCheckBox("CheckBox")
container.add(checkBox)

# Add a ComboBox control:
var comboBox = newComboBox()
container.add(comboBox)
comboBox.append("id1", "Item 1")
comboBox.prepend("id2" ,"Item 2")
comboBox.insert(0, "id3", "Item 3")
# comboBox.selectedIndex = 1
comboBox.selectedValue = "id2"
# comboBox.selectedText = "Item 2"

# Add a Label control:
var label = newLabel("Label")
container.add(label)

# Add a TextBox control:
var textBox = newTextBox("TextBox")
container.add(textBox)

# Add a TextArea control:
var textArea = newTextArea("TextArea\nLine 2\n")
container.add(textArea)

# Add more text to the TextArea:
for i in 3..15:
  textArea.addLine("Line " & $i)

# Add click event to the button:
button.onClick = proc(event: ClickEvent) =
  textArea.addLine("Button clicked")

window.show()

app.run()

discard """ TODOS
  - GTK ComboBox
    -> Add `selectedText=` functionality
  - WIN ComboBox
    -> Calculate visible height
       This should be done after adding an combobox item
"""
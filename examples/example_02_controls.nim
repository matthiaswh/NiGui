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
comboBox.selectedValue = "id2"

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
for i in 3..30:
  textArea.addLine("Line " & $i)

window.show()

app.run()

# NiGui - Win32 platform-specific code - part 2

# This file will be included in "nigui.nim".

type
  ContainerImpl* = ref object of Container
    fScrollWndHandle: pointer
    fInnerHandle: pointer

  NativeFrame* = ref object of Frame

  NativeButton* = ref object of Button

  NativeToggleButton* = ref object of ToggleButton

  NativeCheckBox* = ref object of CheckBox

  NativeComboBox* = ref object of ComboBox

  NativeLabel* = ref object of Label

  NativeTextBox* = ref object of TextBox

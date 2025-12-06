{
  "Hotkey" = {
    # Enumerate when holding modifier of Toggle key
    EnumerateWithTriggerKeys = false;
    # Temporarily Toggle Input Method
    AltTriggerKeys = "";
    # Enumerate Input Method Backward
    EnumerateBackwardKeys = "";
    # Skip first input method while enumerating
    EnumerateSkipFirst = false;
    # Time limit in milliseconds for triggering modifier key shortcuts
    ModifierOnlyKeyTimeout = 250;
  };

  "Hotkey/TriggerKeys" = {
    "0" = "Shift+Shift_L";
    "1" = "Zenkaku_Hankaku";
    "2" = "Hangul";
  };

  "Hotkey/ActivateKeys" = {
    "0" = "Hangul_Hanja";
  };

  "Hotkey/DeactivateKeys" = {
    "0" = "Hangul_Romaja";
  };

  "Hotkey/EnumerateForwardKeys" = {
    "0" = "Control+space";
  };

  "Hotkey/EnumerateGroupForwardKeys" = {
    "0" = "Super+space";
  };

  "Hotkey/EnumerateGroupBackwardKeys" = {
    "0" = "Shift+Super+space";
  };

  "Hotkey/PrevPage" = {
    "0" = "Up";
  };

  "Hotkey/NextPage" = {
    "0" = "Down";
  };

  "Hotkey/PrevCandidate" = {
    "0" = "Shift+Tab";
  };

  "Hotkey/NextCandidate" = {
    "0" = "Tab";
  };

  "Hotkey/TogglePreedit" = {
    "0" = "Control+Alt+P";
  };

  "Behavior" = {
    # Active By Default
    ActiveByDefault = false;
    # Reset state on Focus In
    resetStateWhenFocusIn = "No";
    # Share Input State
    ShareInputState = "No";
    # Show preedit in application
    PreeditEnabledByDefault = true;
    # Show Input Method Information when switch input method
    ShowInputMethodInformation = true;
    # Show Input Method Information when changing focus
    showInputMethodInformationWhenFocusIn = false;
    # Show compact input method information
    CompactInputMethodInformation = true;
    # Show first input method information
    ShowFirstInputMethodInformation = true;
    # Default page size
    DefaultPageSize = 5;
    # Override XKB Option
    OverrideXkbOption = false;
    # Custom XKB Option
    CustomXkbOption = "";
    # Force Enabled Addons
    EnabledAddons = "";
    # Force Disabled Addons
    DisabledAddons = "";
    # Preload input method to be used by default
    PreloadInputMethod = true;
    # Allow input method in the password field
    AllowInputMethodForPassword = false;
    # Show preedit text when typing password
    ShowPreeditForPassword = false;
    # Interval of saving user data in minutes
    AutoSavePeriod = 30;
  };
}

{
  globalSection = {
    # Shuangpin Profile
    ShuangpinProfile = "Ziranma";
    # Show current shuangpin mode
    ShowShuangpinMode = true;
    # Candidates Per Page
    PageSize = 7;
    # Show English Candidates
    SpellEnabled = true;
    # Show symbol candidates
    SymbolsEnabled = true;
    # Show Chaizi candidates
    ChaiziEnabled = true;
    # Enable more Characters after Unicode CJK Extension B
    ExtBEnabled = true;
    # Show stroke candidates when typing with h(一), s(丨), p(丿), n(㇏), z(𠃍)
    StrokeCandidateEnabled = true;
    # Enable Cloud Pinyin
    CloudPinyinEnabled = true;
    # Cloud Pinyin Candidate Order
    CloudPinyinIndex = 2;
    # Show animation when Cloud Pinyin is loading
    CloudPinyinAnimation = true;
    # Always show Cloud Pinyin place holder
    KeepCloudPinyinPlaceHolder = true;
    # Preedit Mode
    PreeditMode = "Composing pinyin";
    # Fix embedded preedit cursor at the beginning of the preedit
    PreeditCursorPositionAtBeginning = true;
    # Show complete pinyin in preedit
    PinyinInPreedit = false;
    # Enable Prediction
    Prediction = false;
    # Number of Predictions
    PredictionSize = 49;
    # Backspace behavior on prediction
    BackspaceBehaviorOnPrediction = "Backspace when not using on-screen keyboard";
    # Action when switching input method
    SwitchInputMethodBehavior = "Commit current preedit";
    # Select Second Candidate
    SecondCandidate = "";
    # Select Third Candidate
    ThirdCandidate = "";
    # Use Keypad as Selection key
    UseKeypadAsSelection = false;
    # Use BackSpace to cancel the selection
    BackSpaceToUnselect = true;
    # Number of Sentences
    "Number of sentence" = 2;
    # Number of Phrase Candidates
    WordCandidateLimit = 15;
    # Prompt long word length when input length over (0 for disable)
    LongWordLengthLimit = 4;
    # Key to trigger quickphrase
    QuickPhraseKey = "";
    # Use V to trigger quickphrase
    VAsQuickphrase = true;
    # FirstRun
    FirstRun = false;
  };

  sections = {
    "ForgetWord" = {
      "0" = "Control+7";
    };

    "PrevPage" = {
      "0" = "bracketleft";
    };

    "NextPage" = {
      "0" = "bracketright";
    };

    "PrevCandidate" = {
      "0" = "Shift+Tab";
    };

    "NextCandidate" = {
      "0" = "Tab";
    };

    "CurrentCandidate" = {
      "0" = "space";
      "1" = "KP_Space";
    };

    "CommitRawInput" = {
      "0" = "Return";
      "1" = "KP_Enter";
      "2" = "Control+Return";
      "3" = "Control+KP_Enter";
      "4" = "Shift+Return";
      "5" = "Shift+KP_Enter";
      "6" = "Control+Shift+Return";
      "7" = "Control+Shift+KP_Enter";
    };

    "ChooseCharFromPhrase" = {
      "0" = "bracketleft";
      "1" = "bracketright";
    };

    "FilterByStroke" = {
      "0" = "grave";
    };

    "QuickPhraseTriggerRegex" = {
      "0" = ".(/|@)$";
      "1" = "^(www|bbs|forum|mail|bbs)\\.";
      "2" = "^(http|https|ftp|telnet|mailto):";
    };

    "Fuzzy" = {
      # ue -> ve
      VE_UE = true;
      # Common Typo
      NG_GN = true;
      # Inner Segment (xian -> xi'an)
      Inner = true;
      # Inner Segment for Short Pinyin (qie -> qi'e)
      InnerShort = true;
      # Match partial finals (e -> en, eng, ei)
      PartialFinal = true;
      # Match partial shuangpin if input length is longer than 4
      PartialSp = false;
      # u <-> v
      V_U = false;
      # an <-> ang
      AN_ANG = false;
      # en <-> eng
      EN_ENG = false;
      # ian <-> iang
      IAN_IANG = false;
      # in <-> ing
      IN_ING = false;
      # u <-> ou
      U_OU = false;
      # uan <-> uang
      UAN_UANG = false;
      # c <-> ch
      C_CH = false;
      # f <-> h
      F_H = false;
      # l <-> n
      L_N = false;
      # l <-> r
      L_R = false;
      # s <-> sh
      S_SH = false;
      # z <-> zh
      Z_ZH = false;
      # Correction Layout
      Correction = "None";
    };
  };
}

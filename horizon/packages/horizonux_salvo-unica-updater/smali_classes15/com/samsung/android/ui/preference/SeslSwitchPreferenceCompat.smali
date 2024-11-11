.class public Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
.super Lcom/samsung/android/ui/preference/TwoStatePreference;
.source "SeslSwitchPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;,
        Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$Listener;
    }
.end annotation


# instance fields
.field private final mClickListener:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;

.field private final mListener:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const v0, 0x7f04034b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;-><init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$1;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mClickListener:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;

    .line 34
    new-instance v0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$Listener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$Listener;-><init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$1;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mListener:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$Listener;

    .line 40
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslSwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    invoke-static {v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v1, 0x6

    invoke-static {v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 43
    const/16 v1, 0x9

    invoke-static {v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 44
    const/16 v1, 0x8

    invoke-static {v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setDisableDependentsState(Z)V

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 99
    instance-of v0, p1, Lcom/samsung/android/ui/widget/SeslSwitch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslSwitch;

    .line 101
    .local v0, "switchView":Lcom/samsung/android/ui/widget/SeslSwitch;
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    .end local v0    # "switchView":Lcom/samsung/android/ui/widget/SeslSwitch;
    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 106
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/ui/widget/SeslSwitch;

    if-eqz v0, :cond_3

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/widget/SeslSwitch;

    .line 108
    .restart local v0    # "switchView":Lcom/samsung/android/ui/widget/SeslSwitch;
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mListener:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$Listener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslSwitch;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mClickListener:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/widget/SeslSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->isTalkBackIsRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;

    if-nez v2, :cond_3

    .line 115
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setClickable(Z)V

    .line 119
    .end local v0    # "switchView":Lcom/samsung/android/ui/widget/SeslSwitch;
    :cond_3
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 87
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "switchView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 94
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->syncSummaryView(Landroid/view/View;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 64
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "switchView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->syncSummaryView(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 67
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 81
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .line 75
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->notifyChanged()V

    .line 77
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->notifyChanged()V

    .line 72
    return-void
.end method

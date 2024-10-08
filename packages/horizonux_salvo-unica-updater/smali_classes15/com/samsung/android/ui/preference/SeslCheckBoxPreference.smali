.class public Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;
.super Lcom/samsung/android/ui/preference/TwoStatePreference;
.source "SeslCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const v0, 0x7f040094

    const v1, 0x101008f

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance v0, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$Listener;-><init>(Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->mListener:Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$Listener;

    .line 39
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslCheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 41
    const/4 v1, 0x4

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v1, 0x3

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->setDisableDependentsState(Z)V

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method

.method private syncCheckboxView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 80
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 86
    :cond_1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->mListener:Lcom/samsung/android/ui/preference/SeslCheckBoxPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 68
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "checkboxView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 75
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 54
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->syncSummaryView(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 57
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 61
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslCheckBoxPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 63
    return-void
.end method

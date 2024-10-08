.class public Lcom/mesalabs/cerberus/ui/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;,
        Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;
    }
.end annotation


# static fields
.field private static final SWITCH_OFF_STRING_RESOURCE_ID:I = 0x7f0f0130

.field private static final SWITCH_ON_STRING_RESOURCE_ID:I = 0x7f0f0131


# instance fields
.field private mBackgroundActivatedColor:I

.field private mBackgroundColor:I

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mIsNightMode:Z

.field private mOffTextColor:I

.field private mOffTextId:I

.field private mOnTextColor:I

.field private mOnTextId:I

.field private mProgressBar:Lcom/samsung/android/ui/widget/SeslProgressBar;

.field private mSwitchBarLayout:Landroid/widget/LinearLayout;

.field private mSwitchBarPressListener:Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

.field private mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

.field private mSwitchBarText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const v0, 0x7f040300

    invoke-direct {p0, p1, p2, v0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    .line 49
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mIsNightMode:Z

    .line 78
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mIsNightMode:Z

    .line 81
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0056

    invoke-static {v1, v2, p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setClickable(Z)V

    .line 86
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mesalabs/ten/update/R$styleable;->SwitchBar:[I

    invoke-virtual {v2, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 87
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0601a5

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mBackgroundColor:I

    .line 88
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0601a8

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 89
    .local v1, "bgActivatedColor":I
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0601ac

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOnTextColor:I

    .line 90
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0601a7

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOffTextColor:I

    .line 91
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    iget-boolean v3, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mIsNightMode:Z

    const v4, 0xffffff

    if-eqz v3, :cond_0

    .line 96
    and-int v3, v1, v4

    .line 97
    .local v3, "color":I
    const/high16 v4, 0x66000000

    .local v4, "alpha":I
    goto :goto_0

    .line 99
    .end local v3    # "color":I
    .end local v4    # "alpha":I
    :cond_0
    and-int v3, v1, v4

    .line 100
    .restart local v3    # "color":I
    const/high16 v4, 0x55000000

    .line 102
    .restart local v4    # "alpha":I
    :goto_0
    or-int v5, v3, v4

    iput v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mBackgroundActivatedColor:I

    .line 104
    const v5, 0x7f09013b

    invoke-virtual {p0, v5}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/widget/SeslProgressBar;

    iput-object v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mProgressBar:Lcom/samsung/android/ui/widget/SeslProgressBar;

    .line 105
    const v5, 0x7f09013a

    invoke-virtual {p0, v5}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarLayout:Landroid/widget/LinearLayout;

    .line 106
    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v5, 0x7f0f0131

    iput v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOnTextId:I

    .line 109
    const v5, 0x7f0f0130

    iput v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOffTextId:I

    .line 111
    const v5, 0x7f09013d

    invoke-virtual {p0, v5}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07027e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 113
    const v5, 0x7f09013c

    invoke-virtual {p0, v5}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    iput-object v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    .line 114
    invoke-virtual {v5, v0}, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->setSaveEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07027d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 118
    new-instance v0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;-><init>(Landroid/view/View;)V

    .line 119
    .local v0, "delegate":Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarLayout:Landroid/widget/LinearLayout;

    invoke-static {v5, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 120
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    invoke-static {v5, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 121
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getActivityTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarDelegate;->setSessionName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 185
    return-object v2

    .line 188
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 189
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 190
    .local v1, "title":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    .line 193
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setVisibility(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 148
    invoke-virtual {p0, p2}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarPressListener:Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

    invoke-interface {v0, p2}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;->setChecked(Z)V

    .line 150
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->toggle()V

    .line 155
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarPressListener:Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    invoke-interface {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;->setChecked(Z)V

    .line 156
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    .line 169
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->setChecked(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setTextViewLabelAndBackground()V

    .line 171
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarPressListener:Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    invoke-interface {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;->setChecked(Z)V

    .line 172
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 160
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarSwitch:Lcom/samsung/android/ui/widget/SeslToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslToggleSwitch;->setEnabled(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setTextViewLabelAndBackground()V

    .line 164
    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mProgressBar:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetProgressBarVisible"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return-void
.end method

.method public setSwitchBarPressListener(Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

    .line 206
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarPressListener:Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

    .line 207
    return-void
.end method

.method public setSwitchBarText(II)V
    .locals 0
    .param p1, "onTextId"    # I
    .param p2, "offTextId"    # I

    .line 210
    iput p1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOnTextId:I

    .line 211
    iput p2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOffTextId:I

    .line 212
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setTextViewLabelAndBackground()V

    .line 213
    return-void
.end method

.method public setTextViewLabel()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f0131

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0130

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public setTextViewLabelAndBackground()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOnTextId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOffTextId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mBackgroundActivatedColor:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mBackgroundColor:I

    :goto_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 225
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOnTextColor:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mOffTextColor:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 232
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mSwitchBarText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_4
    return-void
.end method

.method public show()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setVisibility(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->mChecked:Z

    .line 177
    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setChecked(Z)V

    .line 178
    return-void
.end method

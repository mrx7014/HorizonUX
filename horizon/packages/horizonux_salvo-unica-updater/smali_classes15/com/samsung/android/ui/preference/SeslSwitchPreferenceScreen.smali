.class public Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;
.super Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
.source "SeslSwitchPreferenceScreen.java"


# instance fields
.field private mSwitchKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const v0, 0x7f04034c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen$1;-><init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    .line 62
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "fragment":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    const-string v2, "SwitchPreferenceScreen"

    const-string v3, "SwitchPreferenceScreen should get fragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 68
    .local v2, "conf":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x140

    if-gt v3, v4, :cond_2

    iget v3, v2, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3f8ccccd    # 1.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_2
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x19b

    if-ge v3, v4, :cond_4

    iget v3, v2, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    goto :goto_0

    .line 71
    :cond_3
    const v3, 0x7f0c00ac

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->setLayoutResource(I)V

    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    const v3, 0x7f0c00aa

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->setLayoutResource(I)V

    .line 73
    :goto_1
    const v3, 0x7f0c00ad

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method


# virtual methods
.method protected callClickListener()V
    .locals 0

    .line 89
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 94
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceScreen;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 95
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "titleView":Landroid/widget/TextView;
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "switchView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 98
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 99
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 86
    return-void
.end method

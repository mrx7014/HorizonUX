.class public Lcom/samsung/android/ui/preference/PreferenceCategory;
.super Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# instance fields
.field private mHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const v0, 0x7f0402bd

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const v0, 0x7f0f0128

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceCategory;->mHeader:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PreferenceCategory"

    const-string v2, "Can not find the string. Please updates latest sesl-appcompat library, "

    invoke-static {v1, v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const-string v0, "Header"

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceCategory;->mHeader:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 71
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceCategory;->mHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/preference/PreferenceCategory;->mIsSolidRoundedCorner:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 76
    iget v1, p0, Lcom/samsung/android/ui/preference/PreferenceCategory;->mSubheaderColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 78
    :cond_1
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 51
    instance-of v0, p1, Lcom/samsung/android/ui/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->onPrepareAddPreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    move-result v0

    return v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

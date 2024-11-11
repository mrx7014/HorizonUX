.class public Lcom/samsung/android/ui/preference/SeslListPreference;
.super Lcom/samsung/android/ui/preference/SeslDialogPreference;
.source "SeslListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const v0, 0x7f040127

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 40
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    sget-object v1, Lcom/mesalabs/ten/update/R$styleable;->SeslPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    const/16 v1, 0x1f

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 99
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 100
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return v0

    .line 100
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getValueIndex()I

    move-result v0

    .line 95
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 83
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 85
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 137
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;

    .line 143
    .local v0, "myState":Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 144
    iget-object v1, v0, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    return-void

    .line 138
    .end local v0    # "myState":Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 139
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 125
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 126
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    return-object v0

    .line 130
    :cond_0
    new-instance v1, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 131
    .local v1, "myState":Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/ui/preference/SeslListPreference$SavedState;->value:Ljava/lang/String;

    .line 132
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 120
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 69
    .local v0, "changed":Z
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValue:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslListPreference;->mValueSet:Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslListPreference;->persistString(Ljava/lang/String;)Z

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->notifyChanged()V

    .line 77
    :cond_1
    return-void
.end method

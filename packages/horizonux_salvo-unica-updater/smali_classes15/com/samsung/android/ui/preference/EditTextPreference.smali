.class public Lcom/samsung/android/ui/preference/EditTextPreference;
.super Lcom/samsung/android/ui/preference/SeslDialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const v0, 0x7f040146

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 94
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;

    .line 100
    .local v0, "myState":Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 101
    iget-object v1, v0, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 102
    return-void

    .line 95
    .end local v0    # "myState":Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 96
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 83
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    return-object v0

    .line 87
    :cond_0
    new-instance v1, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 88
    .local v1, "myState":Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/ui/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 89
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 51
    .local v0, "wasBlocking":Z
    iput-object p1, p0, Lcom/samsung/android/ui/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 56
    .local v1, "isBlocking":Z
    if-eq v1, v0, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

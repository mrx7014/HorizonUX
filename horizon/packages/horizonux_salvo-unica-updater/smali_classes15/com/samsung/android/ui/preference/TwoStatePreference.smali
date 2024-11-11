.class public abstract Lcom/samsung/android/ui/preference/TwoStatePreference;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field protected mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onClick()V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 55
    .local v0, "newValue":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 159
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;

    .line 165
    .local v0, "myState":Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    iget-boolean v1, v0, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    return-void

    .line 160
    .end local v0    # "myState":Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 148
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    return-object v0

    .line 152
    :cond_0
    new-instance v1, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 153
    .local v1, "myState":Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/ui/preference/TwoStatePreference$SavedState;->checked:Z

    .line 154
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 108
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 63
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    .line 64
    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mCheckedSet:Z

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 66
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->notifyChanged()V

    .line 71
    :cond_2
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 99
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->notifyChanged()V

    .line 95
    :cond_0
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->notifyChanged()V

    .line 88
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mDisableDependentsState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method protected syncSummaryView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 117
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "summaryView":Landroid/widget/TextView;
    const/4 v1, 0x1

    .line 122
    .local v1, "useDefaultSummary":Z
    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mChecked:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/samsung/android/ui/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v1, 0x0

    .line 129
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 131
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v1, 0x0

    .line 136
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/16 v2, 0x8

    .line 137
    .local v2, "newVisibility":I
    if-nez v1, :cond_4

    .line 138
    const/4 v2, 0x0

    .line 140
    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 141
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_5
    return-void
.end method

.method protected syncSummaryView(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 112
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 114
    return-void
.end method

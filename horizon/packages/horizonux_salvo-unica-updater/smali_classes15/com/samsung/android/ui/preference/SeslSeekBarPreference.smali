.class public Lcom/samsung/android/ui/preference/SeslSeekBarPreference;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "SeslSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field public mAdjustable:Z

.field public mMax:I

.field public mMin:I

.field public mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

.field public mSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

.field public mSeekBarIncrement:I

.field public mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field public mSeekBarValue:I

.field public mShowSeekBarValue:Z

.field public mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 43
    const v0, 0x7f0402f4

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$1;-><init>(Lcom/samsung/android/ui/preference/SeslSeekBarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 85
    new-instance v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$2;-><init>(Lcom/samsung/android/ui/preference/SeslSeekBarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 103
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslSeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "var5":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    .line 105
    const/4 v1, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->setMax(I)V

    .line 106
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->setSeekBarIncrement(I)V

    .line 107
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mAdjustable:Z

    .line 108
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mShowSeekBarValue:Z

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 113
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 114
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    const v0, 0x7f0901b4

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    .line 117
    .local v0, "var3":Lcom/samsung/android/ui/widget/SeslSeekBar;
    if-nez v0, :cond_0

    .line 118
    const-string v1, "SeslSeekBarPreference"

    const-string v2, "SeekBar view is null in onBindViewHolder."

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarChangeListener:Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lcom/samsung/android/ui/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    iget v3, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/widget/SeslSeekBar;->setMax(I)V

    .line 123
    iget v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarIncrement:I

    .line 124
    .local v1, "var2":I
    if-eqz v1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/widget/SeslSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslSeekBar;->getKeyProgressIncrement()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarIncrement:I

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    iget v3, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    iget v4, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/widget/SeslSeekBar;->setProgress(I)V

    .line 131
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBar:Lcom/samsung/android/ui/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/widget/SeslSeekBar;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v1    # "var2":I
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "var1"    # Landroid/content/res/TypedArray;
    .param p2, "var2"    # I

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 146
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;

    .line 147
    .local v0, "var2":Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 148
    iget v1, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mSeekBarValue:I

    iput v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    .line 149
    iget v1, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMin:I

    iput v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    .line 150
    iget v1, v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMax:I

    iput v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->notifyChanged()V

    .line 153
    .end local v0    # "var2":Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 156
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 157
    .local v0, "var1":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    return-object v0

    .line 160
    :cond_0
    new-instance v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    .local v1, "var2":Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;
    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    iput v2, v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mSeekBarValue:I

    .line 162
    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    iput v2, v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMin:I

    .line 163
    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    iput v2, v1, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMax:I

    .line 164
    return-object v1
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/Object;

    .line 169
    move-object v0, p1

    .line 170
    .local v0, "var2":Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 171
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->getPersistedInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->setValue(I)V

    .line 175
    return-void
.end method

.method public final setMax(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 178
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    .line 179
    .local v0, "var2":I
    move v1, p1

    .line 180
    .local v1, "var3":I
    if-ge p1, v0, :cond_0

    .line 181
    move v1, v0

    .line 184
    :cond_0
    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    if-eq v1, v2, :cond_1

    .line 185
    iput v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->notifyChanged()V

    .line 189
    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 192
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 193
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    iget v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarIncrement:I

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->notifyChanged()V

    .line 197
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->setValueInternal(IZ)V

    .line 201
    return-void
.end method

.method public final setValueInternal(IZ)V
    .locals 3
    .param p1, "var1"    # I
    .param p2, "var2"    # Z

    .line 204
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    .line 205
    .local v0, "var3":I
    move v1, p1

    .line 206
    .local v1, "var4":I
    if-ge p1, v0, :cond_0

    .line 207
    move v1, v0

    .line 210
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMax:I

    .line 211
    move p1, v1

    .line 212
    if-le v1, v0, :cond_1

    .line 213
    move p1, v0

    .line 216
    :cond_1
    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    if-eq p1, v2, :cond_2

    .line 217
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    .line 218
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->persistInt(I)Z

    .line 219
    if-eqz p2, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->notifyChanged()V

    .line 224
    :cond_2
    return-void
.end method

.method public final syncValueInternal(Lcom/samsung/android/ui/widget/SeslSeekBar;)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/widget/SeslSeekBar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 227
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    invoke-virtual {p1}, Lcom/samsung/android/ui/widget/SeslSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    .local v0, "var2":I
    iget v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->setValueInternal(IZ)V

    goto :goto_0

    .line 232
    :cond_0
    iget v1, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/widget/SeslSeekBar;->setProgress(I)V

    .line 236
    :cond_1
    :goto_0
    return-void
.end method

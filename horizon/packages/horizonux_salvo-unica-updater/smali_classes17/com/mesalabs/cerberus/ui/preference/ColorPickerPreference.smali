.class public Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "ColorPickerPreference.java"

# interfaces
.implements Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;
.implements Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAlphaSliderEnabled:Z

.field mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

.field private mFirstColor:Z

.field private mIsNightMode:Z

.field mPreview:Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;

.field private mUsedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:I

.field mViewHolder:Lcom/samsung/android/ui/preference/PreferenceViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mFirstColor:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mFirstColor:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method private addRecentColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "argb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 149
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getRecentColors()[I
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 171
    .local v0, "usedColors":[I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mUsedColors:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .local v1, "reverseUsedColor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 175
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 176
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->setWidgetLayoutResource(I)V

    .line 80
    invoke-virtual {p0, p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->setOnPreferenceClickListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;)V

    .line 82
    invoke-static {p1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mIsNightMode:Z

    .line 84
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private setPreviewColor()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mPreview:Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mIsNightMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0800ee

    goto :goto_0

    :cond_1
    const v1, 0x7f0800ef

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 103
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 105
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mPreview:Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .line 132
    :try_start_0
    new-instance v0, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->getRecentColors()[I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog$OnColorSetListener;I[I)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    .line 133
    iget v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->setNewColor(Ljava/lang/Integer;)V

    .line 134
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    iget-boolean v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->setTransparencyControlEnabled(Z)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V

    .line 92
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mViewHolder:Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .line 93
    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mPreview:Lcom/samsung/android/ui/preference/internal/SeslPreferenceImageView;

    .line 94
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->setPreviewColor()V

    .line 95
    return-void
.end method

.method public onColorSet(I)V
    .locals 1
    .param p1, "color"    # I

    .line 110
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->persistInt(I)Z

    .line 113
    :cond_0
    iput p1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 117
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mFirstColor:Z

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->addRecentColor(I)V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mFirstColor:Z

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->setPreviewColor()V

    .line 122
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "mHexDefaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "colorInt":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 68
    .end local v1    # "colorInt":I
    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onPreferenceClick(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 195
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;

    .line 201
    .local v0, "myState":Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    iget-object v1, v0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    .line 203
    return-void

    .line 196
    .end local v0    # "myState":Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 197
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 183
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 184
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v1, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 189
    .local v1, "myState":Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mDialog:Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;

    invoke-virtual {v2}, Lcom/samsung/android/ui/picker/app/SeslColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 190
    return-object v1

    .line 185
    .end local v1    # "myState":Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 74
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->onColorSet(I)V

    .line 75
    return-void
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 146
    return-void
.end method

.method public toString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    .local p1, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 207
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 208
    const-string v1, "0"

    return-object v1

    .line 210
    :cond_0
    const-string v1, ""

    .line 211
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 212
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 213
    .local v3, "nums":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .end local v3    # "nums":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

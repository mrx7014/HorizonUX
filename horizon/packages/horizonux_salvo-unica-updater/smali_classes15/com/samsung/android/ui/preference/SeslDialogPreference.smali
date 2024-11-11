.class public abstract Lcom/samsung/android/ui/preference/SeslDialogPreference;
.super Lcom/samsung/android/ui/preference/SeslPreference;
.source "SeslDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslDialogPreference$TargetFragment;
    }
.end annotation


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    const v0, 0x7f040127

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslDialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 39
    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 42
    :cond_0
    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 43
    const/4 v1, 0x6

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/16 v1, 0xb

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 45
    const/16 v1, 0xa

    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 46
    const/4 v1, 0x7

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogLayoutResId:I

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->getPreferenceManager()Lcom/samsung/android/ui/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->showDialog(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 85
    return-void
.end method

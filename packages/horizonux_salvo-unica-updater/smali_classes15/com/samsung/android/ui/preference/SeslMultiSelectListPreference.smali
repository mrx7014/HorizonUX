.class public Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
.super Lcom/samsung/android/ui/preference/SeslDialogPreference;
.source "SeslMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field public mEntries:[Ljava/lang/CharSequence;

.field public mEntryValues:[Ljava/lang/CharSequence;

.field public mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 39
    const v0, 0x7f040127

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/preference/SeslDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 50
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->SeslMultiSelectListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "var5":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 52
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 4
    .param p1, "var1"    # Landroid/content/res/TypedArray;
    .param p2, "var2"    # I

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, "var5":[Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v1, "var3":Ljava/util/HashSet;
    array-length v2, v0

    .line 73
    .local v2, "var4":I
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v2, :cond_0

    .line 74
    aget-object v3, v0, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;

    .line 83
    .local v0, "var2":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 84
    iget-object v1, v0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 85
    .end local v0    # "var2":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;
    goto :goto_0

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 88
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 91
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 92
    .local v0, "var1":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    return-object v0

    .line 95
    :cond_0
    new-instance v1, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 96
    .local v1, "var2":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    .line 97
    return-object v1
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 103
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "var1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 109
    return-void
.end method

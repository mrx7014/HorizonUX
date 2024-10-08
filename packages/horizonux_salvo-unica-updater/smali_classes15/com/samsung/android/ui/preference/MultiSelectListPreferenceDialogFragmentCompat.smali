.class public Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;
.super Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_CHANGED:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.changed"

.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragmentCompat.values"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$076(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;
    .param p1, "x1"    # I

    .line 28
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getListPreference()Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->getPreference()Lcom/samsung/android/ui/preference/SeslDialogPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    .line 40
    .local v0, "fragment":Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;

    move-result-object v1

    .line 53
    .local v1, "preference":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 58
    iget-object v2, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 60
    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 62
    .end local v1    # "preference":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
    goto :goto_0

    .line 54
    .restart local v1    # "preference":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "SeslMultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    .end local v1    # "preference":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 66
    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 67
    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 69
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;

    move-result-object v0

    .line 109
    .local v0, "preference":Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    .line 111
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 115
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 116
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 89
    .local v0, "entryCount":I
    new-array v1, v0, [Z

    .line 90
    .local v1, "checkedItems":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 91
    iget-object v3, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;-><init>(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v2, v1, v3}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.class public Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;
.super Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;
.source "ListPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "ListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "ListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INDEX:Ljava/lang/String; = "ListPreferenceDialogFragment.index"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;
    .param p1, "x1"    # I

    .line 26
    iput p1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private static getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "stored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    :goto_0
    return-object v1
.end method

.method private getListPreference()Lcom/samsung/android/ui/preference/SeslListPreference;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->getPreference()Lcom/samsung/android/ui/preference/SeslDialogPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/SeslListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    .line 36
    .local v0, "fragment":Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 37
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v0
.end method

.method private static putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "out"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/CharSequence;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v0, "stored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 74
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "cs":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-nez p1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Lcom/samsung/android/ui/preference/SeslListPreference;

    move-result-object v0

    .line 48
    .local v0, "preference":Lcom/samsung/android/ui/preference/SeslListPreference;
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/SeslListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 55
    .end local v0    # "preference":Lcom/samsung/android/ui/preference/SeslListPreference;
    goto :goto_0

    .line 49
    .restart local v0    # "preference":Lcom/samsung/android/ui/preference/SeslListPreference;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "preference":Lcom/samsung/android/ui/preference/SeslListPreference;
    :cond_1
    const/4 v0, 0x0

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 57
    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 58
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 60
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Lcom/samsung/android/ui/preference/SeslListPreference;

    move-result-object v0

    .line 111
    .local v0, "preference":Lcom/samsung/android/ui/preference/SeslListPreference;
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v2, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/SeslListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat$1;-><init>(Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    .line 106
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    iget v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.class public Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;
.super Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;
.source "EditTextPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method private getEditTextPreference()Lcom/samsung/android/ui/preference/EditTextPreference;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->getPreference()Lcom/samsung/android/ui/preference/SeslDialogPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/EditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 29
    .local v0, "fragment":Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 30
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 55
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 57
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 38
    if-nez p1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Lcom/samsung/android/ui/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 43
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Lcom/samsung/android/ui/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Lcom/samsung/android/ui/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 81
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/ui/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.class public Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;
.super Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;


# instance fields
.field private mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->mLastClickTime:J

    return-void
.end method

.method private getColoredSummaryColor()Landroid/content/res/ColorStateList;
    .locals 9

    .line 180
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 181
    .local v0, "colorPrimaryDark":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0400da

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 183
    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v4, v3, [I

    const v5, 0x101009e

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, -0x101009e

    aput v5, v4, v6

    aput-object v4, v2, v3

    .line 187
    .local v2, "states":[[I
    new-array v1, v1, [I

    iget v4, v0, Landroid/util/TypedValue;->data:I

    .line 188
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v7, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    const/16 v8, 0xff

    invoke-static {v8, v4, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v1, v6

    iget v4, v0, Landroid/util/TypedValue;->data:I

    .line 189
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v7, 0x4d

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v1, v3

    .line 191
    .local v1, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private setRingtoneSummary()V
    .locals 5

    .line 195
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "title":Ljava/lang/String;
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationSound()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "value":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 199
    .local v2, "ringtone":Landroid/media/Ringtone;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    :cond_0
    const-string v2, "mesa_bgservice_noti_sound_pref"

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    .line 203
    .local v2, "bgServiceNotiSoundPref":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/preference/SeslPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1

    .line 205
    const-string v3, "mesa_bgservice_noti_vibrate_pref"

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;

    .line 206
    .local v3, "bgServiceNotiVibratePref":Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationVibrate()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setChecked(Z)V

    .line 208
    .end local v3    # "bgServiceNotiVibratePref":Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getListView()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    .line 49
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 107
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 108
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 109
    .local v0, "ringtone":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setBgServiceNotificationSound(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    const-string v1, ""

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setBgServiceNotificationSound(Ljava/lang/String;)V

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->setRingtoneSummary()V

    .line 115
    .end local v0    # "ringtone":Landroid/net/Uri;
    goto :goto_1

    .line 116
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "mesa_bgservice"

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/preference/PreferenceCategory;

    .line 63
    .local v0, "bgServicePrefParent":Lcom/samsung/android/ui/preference/PreferenceCategory;
    const-string v1, "mesa_bgservice_pref"

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;

    .line 64
    .local v1, "bgServicePref":Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
    invoke-virtual {v1, p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setOnPreferenceChangeListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;)V

    .line 66
    const-string v2, "mesa_bgservice_freq_pref"

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/preference/SeslListPreference;

    .line 67
    .local v2, "bgServiceFreqPref":Lcom/samsung/android/ui/preference/SeslListPreference;
    invoke-direct {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getColoredSummaryColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/preference/SeslListPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    .line 68
    invoke-virtual {v2, p0}, Lcom/samsung/android/ui/preference/SeslListPreference;->setOnPreferenceChangeListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;)V

    .line 70
    const-string v3, "mesa_bgservice_noti_sound_pref"

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v3

    .line 71
    .local v3, "bgServiceNotiSoundPref":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-direct {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getColoredSummaryColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/preference/SeslPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    .line 72
    invoke-virtual {v3, p0}, Lcom/samsung/android/ui/preference/SeslPreference;->setOnPreferenceClickListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;)V

    .line 74
    const-string v4, "mesa_bgservice_noti_vibrate_pref"

    invoke-virtual {p0, v4}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;

    .line 75
    .local v4, "bgServiceNotiVibratePref":Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    .line 76
    invoke-virtual {v0, v4}, Lcom/samsung/android/ui/preference/PreferenceCategory;->removePreference(Lcom/samsung/android/ui/preference/SeslPreference;)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v4, p0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->setOnPreferenceChangeListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceChangeListener;)V

    .line 81
    :goto_0
    const-string v5, "mesa_networktype_pref"

    invoke-virtual {p0, v5}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/preference/SeslListPreference;

    .line 82
    .local v5, "networkTypePref":Lcom/samsung/android/ui/preference/SeslListPreference;
    invoke-direct {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getColoredSummaryColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/preference/SeslListPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    .line 83
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getIsDownloadOnGoing()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/preference/SeslListPreference;->setEnabled(Z)V

    .line 85
    const-string v6, "mesa_aboutactivity_pref"

    invoke-virtual {p0, v6}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v6

    .line 86
    .local v6, "aboutActivityPref":Lcom/samsung/android/ui/preference/SeslPreference;
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getIsAppUpdateAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    const v7, 0x7f0c004c

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/preference/SeslPreference;->setWidgetLayoutResource(I)V

    .line 89
    :cond_1
    invoke-virtual {v6, p0}, Lcom/samsung/android/ui/preference/SeslPreference;->setOnPreferenceClickListener(Lcom/samsung/android/ui/preference/SeslPreference$OnPreferenceClickListener;)V

    .line 90
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "str"    # Ljava/lang/String;

    .line 53
    const/high16 v0, 0x7f120000

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->seslSetRoundedCornerType(I)V

    .line 55
    return-void
.end method

.method public onPreferenceChange(Lcom/samsung/android/ui/preference/SeslPreference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "mesa_bgservice_noti_vibrate_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "mesa_bgservice_freq_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "mesa_bgservice_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 136
    return v2

    .line 132
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setBgServiceNotificationVibrate(Z)V

    .line 133
    return v3

    .line 128
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setBgServiceCheckFrequency(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->scheduleNotification(Landroid/content/Context;Z)V

    .line 130
    return v3

    .line 124
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setBgServiceEnabled(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setBackgroundCheck(Landroid/content/Context;Z)V

    .line 126
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50d2a655 -> :sswitch_2
        0x15974d02 -> :sswitch_1
        0x70ef9214 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Lcom/samsung/android/ui/preference/SeslPreference;)Z
    .locals 5
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->mLastClickTime:J

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "mesa_bgservice_noti_sound_pref"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "mesa_aboutactivity_pref"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 176
    return v1

    .line 172
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mesalabs/ten/update/activity/aboutpage/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 173
    return v4

    .line 148
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 154
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceNotificationSound()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "existingValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    if-nez v2, :cond_3

    .line 162
    const/4 v2, 0x0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 164
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    :goto_1
    invoke-virtual {p0, v0, v4}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "existingValue":Ljava/lang/String;
    :goto_2
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x404c9221 -> :sswitch_1
        -0x3340294c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->onStart()V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getMainNotiChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 98
    .local v0, "mainNotiChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "value":Landroid/net/Uri;
    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setBgServiceNotificationSound(Ljava/lang/String;)V

    .line 102
    .end local v0    # "mainNotiChannel":Landroid/app/NotificationChannel;
    .end local v1    # "value":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;->setRingtoneSummary()V

    .line 103
    return-void
.end method

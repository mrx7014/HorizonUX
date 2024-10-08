.class public Lcom/samsung/android/ui/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;,
        Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceComparisonCallback:Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

.field private mPreferenceDataStore:Lcom/samsung/android/ui/preference/PreferenceDataStore;

.field private mPreferenceScreen:Lcom/samsung/android/ui/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mNextId:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mStorage:I

    .line 43
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/ui/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .line 48
    invoke-static {p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/ui/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/samsung/android/ui/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 49
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .line 52
    const-string v0, "_has_set_default_values"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    new-instance v1, Lcom/samsung/android/ui/preference/PreferenceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "pm":Lcom/samsung/android/ui/preference/PreferenceManager;
    invoke-virtual {v1, p1}, Lcom/samsung/android/ui/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p2}, Lcom/samsung/android/ui/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v1, p0, p3, v3}, Lcom/samsung/android/ui/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/samsung/android/ui/preference/PreferenceScreen;)Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 58
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    .end local v1    # "pm":Lcom/samsung/android/ui/preference/PreferenceManager;
    :cond_1
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 1
    .param p1, "noCommit"    # Z

    .line 169
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mNoCommit:Z

    .line 173
    return-void
.end method


# virtual methods
.method public findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceScreen:Lcom/samsung/android/ui/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v0

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceDataStore:Lcom/samsung/android/ui/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnNavigateToScreenListener()Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mOnNavigateToScreenListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceComparisonCallback()Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceComparisonCallback:Lcom/samsung/android/ui/preference/PreferenceManager$PreferenceComparisonCallback;

    return-object v0
.end method

.method public getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceDataStore:Lcom/samsung/android/ui/preference/PreferenceDataStore;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/samsung/android/ui/preference/PreferenceScreen;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceScreen:Lcom/samsung/android/ui/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/ui/preference/PreferenceManager;->getPreferenceDataStore()Lcom/samsung/android/ui/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 101
    iget v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mStorage:I

    packed-switch v0, :pswitch_data_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .local v0, "storageContext":Landroid/content/Context;
    goto :goto_0

    .line 103
    .end local v0    # "storageContext":Landroid/content/Context;
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 104
    .restart local v0    # "storageContext":Landroid/content/Context;
    nop

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 113
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/samsung/android/ui/preference/PreferenceScreen;)Lcom/samsung/android/ui/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/preference/PreferenceManager;->setNoCommit(Z)V

    .line 65
    new-instance v0, Lcom/samsung/android/ui/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/ui/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/samsung/android/ui/preference/PreferenceManager;)V

    .line 66
    .local v0, "inflater":Lcom/samsung/android/ui/preference/PreferenceInflater;
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/ui/preference/PreferenceInflater;->inflate(ILcom/samsung/android/ui/preference/SeslPreferenceGroup;)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v1

    move-object p3, v1

    check-cast p3, Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 67
    invoke-virtual {p3, p0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/samsung/android/ui/preference/PreferenceManager;)V

    .line 69
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/ui/preference/PreferenceManager;->setNoCommit(Z)V

    .line 71
    return-object p3
.end method

.method public setOnDisplayPreferenceDialogListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V
    .locals 0
    .param p1, "onDisplayPreferenceDialogListener"    # Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    .line 180
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    .line 181
    return-void
.end method

.method public setOnNavigateToScreenListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;

    .line 198
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mOnNavigateToScreenListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnNavigateToScreenListener;

    .line 199
    return-void
.end method

.method public setOnPreferenceTreeClickListener(Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 190
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 191
    return-void
.end method

.method public setPreferences(Lcom/samsung/android/ui/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceScreen:Lcom/samsung/android/ui/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/PreferenceScreen;->onDetached()V

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mPreferenceScreen:Lcom/samsung/android/ui/preference/PreferenceScreen;

    .line 134
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public showDialog(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1}, Lcom/samsung/android/ui/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Lcom/samsung/android/ui/preference/SeslPreference;)V

    .line 187
    :cond_0
    return-void
.end method

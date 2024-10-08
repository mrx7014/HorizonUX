.class public Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "SettingsActivity.java"


# instance fields
.field private mFragment:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    return-void
.end method

.method private inflateFragment()V
    .locals 5

    .line 55
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 57
    .local v0, "transaction":Landroidx/fragment/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v2, "root"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 58
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->mFragment:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 61
    :cond_0
    if-eqz v1, :cond_1

    .line 62
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->mFragment:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 63
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 65
    :cond_1
    new-instance v3, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;

    invoke-direct {v3}, Lcom/mesalabs/ten/update/fragment/settings/SettingsFragment;-><init>()V

    iput-object v3, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->mFragment:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 66
    const v4, 0x7f09011b

    invoke-virtual {v0, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 69
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 70
    return-void
.end method


# virtual methods
.method protected getIsAppBarExpanded()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->setContentView(I)V

    .line 38
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const v1, 0x7f0f004c

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setTitleText(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v1, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity$1;-><init>(Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;->inflateFragment()V

    .line 47
    return-void
.end method

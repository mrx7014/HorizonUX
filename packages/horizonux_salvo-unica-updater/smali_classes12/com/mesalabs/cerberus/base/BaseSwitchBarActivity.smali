.class public Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "BaseSwitchBarActivity.java"


# instance fields
.field protected mFragment:Landroidx/fragment/app/Fragment;

.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field protected mSwitchBar:Lcom/mesalabs/cerberus/ui/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    return-void
.end method

.method private inflateFragment()V
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 56
    .local v0, "transaction":Landroidx/fragment/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v2, "root"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 57
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v3, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 60
    :cond_0
    if-eqz v1, :cond_1

    .line 61
    iput-object v1, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mFragment:Landroidx/fragment/app/Fragment;

    .line 62
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mFragment:Landroidx/fragment/app/Fragment;

    .line 65
    const v4, 0x7f09011c

    invoke-virtual {v0, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 67
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 68
    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 69
    return-void
.end method


# virtual methods
.method protected getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIsAppBarExpanded()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected getParent(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;Lcom/samsung/android/ui/preference/SeslPreference;)Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .locals 4
    .param p1, "groupToSearchIn"    # Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .param p2, "preference"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 85
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;->getPreference(I)Lcom/samsung/android/ui/preference/SeslPreference;

    move-result-object v1

    .line 87
    .local v1, "child":Lcom/samsung/android/ui/preference/SeslPreference;
    if-ne v1, p2, :cond_0

    .line 88
    return-object p1

    .line 90
    :cond_0
    instance-of v2, v1, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    if-eqz v2, :cond_1

    .line 91
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    .line 92
    .local v2, "childGroup":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    invoke-virtual {p0, v2, p2}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->getParent(Lcom/samsung/android/ui/preference/SeslPreferenceGroup;Lcom/samsung/android/ui/preference/SeslPreference;)Lcom/samsung/android/ui/preference/SeslPreferenceGroup;

    move-result-object v3

    .line 93
    .local v3, "result":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    if-eqz v3, :cond_1

    .line 94
    return-object v3

    .line 84
    .end local v1    # "child":Lcom/samsung/android/ui/preference/SeslPreference;
    .end local v2    # "childGroup":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    .end local v3    # "result":Lcom/samsung/android/ui/preference/SeslPreferenceGroup;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwitchBarDefaultStatus()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected getSwitchBarListener()Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->inflateFragment()V

    .line 42
    const v0, 0x7f090139

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mSwitchBar:Lcom/mesalabs/cerberus/ui/widget/SwitchBar;

    .line 43
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->getSwitchBarListener()Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setSwitchBarPressListener(Lcom/mesalabs/cerberus/ui/widget/SwitchBar$SwitchBarPressListener;)V

    .line 44
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->mSwitchBar:Lcom/mesalabs/cerberus/ui/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseSwitchBarActivity;->getSwitchBarDefaultStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/SwitchBar;->setChecked(Z)V

    .line 45
    return-void
.end method

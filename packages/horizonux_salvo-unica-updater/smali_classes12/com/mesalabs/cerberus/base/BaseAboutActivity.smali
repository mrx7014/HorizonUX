.class public Lcom/mesalabs/cerberus/base/BaseAboutActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "BaseAboutActivity.java"


# static fields
.field private static final KEY_UPDATE_STATE:Ljava/lang/String; = "update_state"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mAppInfoView:Landroid/widget/LinearLayout;

.field protected mAppNameText:Landroid/widget/TextView;

.field protected mAppUpdate:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

.field protected mAvailableText:Landroid/widget/TextView;

.field protected mBaseLayout:Landroid/widget/LinearLayout;

.field protected mCheckingStatus:I

.field protected mCredits:Landroidx/appcompat/widget/AppCompatButton;

.field protected mCreditsInLower:Landroidx/appcompat/widget/AppCompatButton;

.field protected mEmptyBottom:Landroid/view/View;

.field protected mEmptyMiddle:Landroid/view/View;

.field protected mEmptyTop:Landroid/view/View;

.field protected mLowerLayout:Landroid/widget/LinearLayout;

.field protected mOpenSource:Landroidx/appcompat/widget/AppCompatButton;

.field protected mOpenSourceInLower:Landroidx/appcompat/widget/AppCompatButton;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

.field protected mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

.field protected mUpperLayout:Landroid/widget/LinearLayout;

.field protected mVersionText:Landroid/widget/TextView;

.field protected mWebLinkView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    .line 66
    new-instance v0, Lcom/mesalabs/cerberus/base/BaseAboutActivity$1;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$1;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/cerberus/base/BaseAboutActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/cerberus/base/BaseAboutActivity;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->checkForUpdatesCompleted(I)V

    return-void
.end method

.method private checkForUpdatesCompleted(I)V
    .locals 3
    .param p1, "status"    # I

    .line 167
    iput p1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setCheckingStatus(Z)V

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    const v2, 0x7f0f0083

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    const v2, 0x7f0f00ae

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_1

    .line 174
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isTabletDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0f00b3

    goto :goto_0

    :cond_1
    const v2, 0x7f0f00b2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    const v2, 0x7f0f00a7

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_1

    .line 178
    :cond_2
    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eq p1, v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    const v2, 0x7f0f007d

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 186
    :goto_1
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOrientationLayout()V

    .line 187
    return-void
.end method


# virtual methods
.method protected checkForUpdatesNotCompleted()V
    .locals 1

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setCheckingStatus(Z)V

    .line 191
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppUpdate:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->checkUpdates()V

    .line 192
    return-void
.end method

.method protected getAppName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getIsAppBarExpanded()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected getIsAppUpdateable()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 152
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCredits:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 154
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSource:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 155
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCreditsInLower:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 156
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSourceInLower:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 157
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOrientationLayout()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setContentView(I)V

    .line 78
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$2;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$2;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$3;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$3;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    const/4 v2, 0x1

    const v3, 0x7f08010b

    const v4, 0x7f0f004b

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->addOverflowButton(ZIILandroid/view/View$OnClickListener;)V

    .line 95
    new-instance v0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppUpdate:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    .line 97
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mBaseLayout:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppInfoView:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpperLayout:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mLowerLayout:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mWebLinkView:Landroid/widget/LinearLayout;

    .line 102
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mEmptyTop:Landroid/view/View;

    .line 103
    const v0, 0x7f090118

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mEmptyMiddle:Landroid/view/View;

    .line 104
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mEmptyBottom:Landroid/view/View;

    .line 105
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 106
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCredits:Landroidx/appcompat/widget/AppCompatButton;

    .line 110
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSource:Landroidx/appcompat/widget/AppCompatButton;

    .line 111
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCreditsInLower:Landroidx/appcompat/widget/AppCompatButton;

    .line 112
    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSourceInLower:Landroidx/appcompat/widget/AppCompatButton;

    .line 114
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCredits:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 115
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSource:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 116
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCreditsInLower:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 117
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSourceInLower:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOpenSourceButtonWidth(Landroid/widget/Button;)V

    .line 119
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setClickListener()V

    .line 121
    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppNameText:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mVersionText:Landroid/widget/TextView;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f00b4

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getIsAppUpdateable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 129
    const-string v1, "update_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    .line 131
    :cond_0
    iget v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    invoke-direct {p0, v1}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->checkForUpdatesCompleted(I)V

    .line 132
    iget v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    if-ne v1, v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->checkForUpdatesNotCompleted()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 141
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setOrientationLayout()V

    .line 142
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->setTextSize()V

    .line 143
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 162
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCheckingStatus:I

    const-string v1, "update_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method protected setCheckingStatus(Z)V
    .locals 4
    .param p1, "status"    # Z

    .line 203
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 206
    return-void
.end method

.method protected setClickListener()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$4;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCredits:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$5;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$5;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSource:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$6;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$6;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCreditsInLower:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$7;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$7;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSourceInLower:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/cerberus/base/BaseAboutActivity$8;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity$8;-><init>(Lcom/mesalabs/cerberus/base/BaseAboutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-void
.end method

.method protected final setOpenSourceButtonWidth(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .line 289
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 293
    .local v1, "widthPixels":I
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 294
    div-int/lit8 v1, v1, 0x2

    .line 296
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v2, v4

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 297
    int-to-double v2, v1

    const-wide v4, 0x3fe3851eb851eb85L    # 0.61

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 298
    return-void
.end method

.method protected final setOrientationLayout()V
    .locals 14

    .line 243
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .local v0, "appInfoViewLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mWebLinkView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    .local v1, "webLinkViewLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    .line 246
    .local v2, "isPortrait":Z
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    .line 248
    .local v3, "heightPixels":D
    const-wide v5, 0x3fa26e978d4fdf3bL    # 0.036

    if-eqz v2, :cond_0

    const-wide v7, 0x3fa999999999999aL    # 0.05

    goto :goto_0

    :cond_0
    move-wide v7, v5

    .line 249
    .local v7, "d":D
    :goto_0
    if-eqz v2, :cond_1

    const-wide v5, 0x3fb604189374bc6aL    # 0.086

    .line 250
    .local v5, "d2":D
    :cond_1
    mul-double v9, v5, v3

    double-to-int v9, v9

    .line 252
    .local v9, "i":I
    iget-object v10, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mEmptyTop:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    iget-object v10, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mEmptyMiddle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 254
    iget-object v10, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mEmptyBottom:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    mul-double v11, v3, v7

    double-to-int v11, v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    .line 257
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mBaseLayout:Landroid/widget/LinearLayout;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppInfoView:Landroid/widget/LinearLayout;

    const/16 v13, 0x31

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 259
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mLowerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v11, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mWebLinkView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 262
    :cond_2
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mBaseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 263
    const/high16 v12, 0x40a00000    # 5.0f

    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppInfoView:Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 267
    iget-object v12, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mLowerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v10, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mWebLinkView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v10, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mWebLinkView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 271
    :goto_1
    return-void
.end method

.method protected final setTextSize()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAppNameText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 275
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mUpdateButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 277
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 278
    .local v0, "dimensionPixelSize":F
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mVersionText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 279
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mAvailableText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 281
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 282
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCredits:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v1, v2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 283
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSource:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v1, v2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 284
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mCreditsInLower:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v1, v2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 285
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/cerberus/base/BaseAboutActivity;->mOpenSourceInLower:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v1, v2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 286
    return-void
.end method

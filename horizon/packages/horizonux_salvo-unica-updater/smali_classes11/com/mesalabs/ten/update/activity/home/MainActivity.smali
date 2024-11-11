.class public Lcom/mesalabs/ten/update/activity/home/MainActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "MainActivity.java"


# static fields
.field public static DOWNLOAD_PROGRESS_FRAGMENT:I

.field public static MAIN_PAGE_FRAGMENT:I


# instance fields
.field private mAppStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

.field private mAppUpdate:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

.field private mAppUpdateAvailable:Z

.field private mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mFadeInAnim:Landroid/view/animation/AlphaAnimation;

.field private mFadeInAnim_Dwn:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnim:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnim_Dwn:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnim_F:Landroid/view/animation/AlphaAnimation;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mFragmentClasses:[Ljava/lang/Class;

.field private mFragmentContainer:Landroid/widget/FrameLayout;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mFragmentTags:[Ljava/lang/String;

.field private mIsDownloadeing:Z

.field private mIsFromLauncher:Z

.field private mProgressCircle:Landroid/app/Dialog;

.field private mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

.field private mRefreshBtn:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

.field private newFragmentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->DOWNLOAD_PROGRESS_FRAGMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mAppUpdateAvailable:Z

    .line 63
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsDownloadeing:Z

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsFromLauncher:Z

    .line 65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/mesalabs/ten/update/fragment/home/MainCardsFragment;

    aput-object v3, v2, v0

    const-class v0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentClasses:[Ljava/lang/Class;

    .line 66
    const-string v0, "MainCards"

    const-string v1, "DownloadProgress"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentTags:[Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mAppStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mesalabs/ten/update/activity/home/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->newFragmentIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/mesalabs/ten/update/activity/home/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->inflateFragment(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mesalabs/ten/update/activity/home/MainActivity;)Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 58
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    return-object v0
.end method

.method private getAvailableInternalMemorySize()J
    .locals 5

    .line 311
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private inflateFragment(I)V
    .locals 5
    .param p1, "index"    # I

    .line 263
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsFromLauncher:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButtonVisible(Z)V

    .line 264
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 265
    .local v0, "transaction":Landroidx/fragment/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentTags:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 266
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    const v3, 0x7f09011d

    if-nez v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    .line 269
    :cond_2
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 271
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v4, v2, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    if-eqz v4, :cond_3

    .line 272
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 276
    :cond_3
    if-eqz v1, :cond_4

    .line 277
    iput-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    .line 278
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    .line 281
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentClasses:[Ljava/lang/Class;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .line 285
    iget-object v4, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentTags:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 287
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 288
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 289
    return-void

    .line 282
    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    new-instance v3, Lcom/mesalabs/cerberus/utils/CerberusException;

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private initAnimationFields()V
    .locals 6

    .line 201
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    .line 202
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 203
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    .line 204
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 206
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeInAnim_Dwn:Landroid/view/animation/AlphaAnimation;

    .line 207
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 208
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeInAnim_Dwn:Landroid/view/animation/AlphaAnimation;

    new-instance v5, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$3;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim_Dwn:Landroid/view/animation/AlphaAnimation;

    .line 223
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 224
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim_Dwn:Landroid/view/animation/AlphaAnimation;

    new-instance v5, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$4;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim_F:Landroid/view/animation/AlphaAnimation;

    .line 242
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim_F:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$5;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    return-void
.end method

.method private initMoreMenuButton()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->initMoreMenuButtonList()Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v2, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setMoreMenuButton(Ljava/util/LinkedHashMap;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 308
    return-void
.end method

.method private initMoreMenuButtonList()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 293
    .local v0, "linkedHashMap":Ljava/util/LinkedHashMap;
    const v1, 0x7f0f00a8

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mAppUpdateAvailable:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->NEW_UPDATE_AVAILABLE:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-object v0
.end method

.method private initUX()V
    .locals 5

    .line 180
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->initAnimationFields()V

    .line 182
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f100337

    goto :goto_0

    :cond_0
    const v2, 0x7f100338

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 184
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 185
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 186
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 187
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0055

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 190
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    .line 191
    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 193
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 196
    sget v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->switchToFragment(I)V

    .line 197
    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateRefreshButton(Z)V

    .line 198
    return-void
.end method


# virtual methods
.method public animateBottomDownloadButton(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "paused"    # Z

    .line 318
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setAlpha(F)V

    .line 320
    if-eqz p2, :cond_1

    .line 321
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0f00a6

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0f00a3

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :goto_1
    return-void
.end method

.method public animateBottomInstallButton(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 330
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setAlpha(F)V

    .line 332
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0f007c

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$6;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void
.end method

.method public animateRefreshButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 344
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mRefreshBtn:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setAlpha(F)V

    .line 345
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mRefreshBtn:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    invoke-virtual {v0, p1}, Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;->setEnabled(Z)V

    .line 346
    return-void
.end method

.method public getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    if-eqz v1, :cond_0

    .line 350
    check-cast v0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    return-object v0

    .line 352
    :cond_0
    const-string v0, "MainActivity"

    const-string v1, "DownloadProgressFragment not inflated!!!"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const v1, 0x7f09011d

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    return-object v0
.end method

.method public synthetic lambda$animateBottomDownloadButton$3$MainActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 322
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->resumeDownload()V

    return-void
.end method

.method public synthetic lambda$animateBottomDownloadButton$4$MainActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 325
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->pauseDownload()V

    return-void
.end method

.method public synthetic lambda$animateBottomInstallButton$5$MainActivity()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    return-void
.end method

.method public synthetic lambda$animateBottomInstallButton$6$MainActivity()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mBottomButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    return-void
.end method

.method public synthetic lambda$initMoreMenuButton$2$MainActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "j"    # J

    .line 300
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->dismissMoreMenuPopupWindow()V

    .line 302
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "obj":Ljava/lang/String;
    const v1, 0x7f0f00a8

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/mesalabs/ten/update/activity/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$MainActivity(I)V
    .locals 1
    .param p1, "status"    # I

    .line 71
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mAppUpdateAvailable:Z

    .line 72
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setIsAppUpdateAvailable(Z)V

    .line 73
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->initMoreMenuButton()V

    .line 74
    return-void
.end method

.method public synthetic lambda$onBackPressed$1$MainActivity(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 161
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->cancelDownload()V

    .line 162
    sget v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->switchToFragment(I)V

    .line 163
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 155
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getIsDownloadOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setCancelable(Z)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f009c

    .line 158
    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f009b

    .line 159
    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f009a

    .line 160
    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0059

    .line 164
    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;->show()Lcom/samsung/android/ui/app/SeslAlertDialog;

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->newFragmentIndex:I

    sget v1, Lcom/mesalabs/ten/update/activity/home/MainActivity;->DOWNLOAD_PROGRESS_FRAGMENT:I

    if-ne v0, v1, :cond_1

    .line 167
    sget v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->switchToFragment(I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-super {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onBackPressed()V

    .line 171
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 175
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 177
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->isNotificationAlarmSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->getBgServiceEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setBackgroundCheck(Landroid/content/Context;Z)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "mesa_ota_isfromlauncher"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsFromLauncher:Z

    .line 107
    :cond_1
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadFinished()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsDownloadeing:Z

    .line 109
    if-nez v1, :cond_2

    .line 110
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->clean()V

    .line 111
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->clean()V

    .line 115
    :cond_2
    new-instance v1, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mAppStubListener:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$StubListener;)V

    iput-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mAppUpdate:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    .line 116
    invoke-virtual {v1}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->checkUpdates()V

    .line 118
    new-instance v1, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    iput-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    .line 121
    const v1, 0x7f0c0043

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->setBaseContentView(I)V

    .line 123
    new-instance v1, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v1, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 124
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initAppBar(Z)V

    .line 125
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const v3, 0x7f0f00aa

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setTitleText(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v3, Lcom/mesalabs/ten/update/activity/home/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$1;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsFromLauncher:Z

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButtonVisible(Z)V

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const v3, 0x7f0800a0

    const v4, 0x7f0f005a

    new-instance v5, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity$2;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->addOverflowButton(ZIILandroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getOverflowIcon(I)Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mRefreshBtn:Lcom/mesalabs/cerberus/ui/widget/ToolbarImageButton;

    .line 148
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->initMoreMenuButton()V

    .line 150
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->initUX()V

    .line 151
    return-void
.end method

.method public onErrorROMUpdateDownload()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0069

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    sget v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->switchToFragment(I)V

    .line 377
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mROMUpdateDownload:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->cancelDownload()V

    .line 378
    return-void
.end method

.method public onPostROMUpdateDownload()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 371
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeInAnim_Dwn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    return-void
.end method

.method public onPreROMUpdateDownload()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 359
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0088

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 362
    return-void

    .line 364
    :cond_0
    sget v0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->DOWNLOAD_PROGRESS_FRAGMENT:I

    iput v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->newFragmentIndex:I

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateRefreshButton(Z)V

    .line 366
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim_Dwn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    return-void
.end method

.method public switchToFragment(I)V
    .locals 2
    .param p1, "index"    # I

    .line 381
    iput p1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->newFragmentIndex:I

    .line 382
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getIsDownloadOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mIsDownloadeing:Z

    .line 383
    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateRefreshButton(Z)V

    .line 384
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/MainActivity;->mFadeOutAnim_F:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 385
    return-void
.end method

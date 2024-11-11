.class public Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "ChangelogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;,
        Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;
    }
.end annotation


# instance fields
.field private isBgColorDark:Z

.field private mContainerDate:Landroid/widget/TextView;

.field private mContainerLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mContainerTitle:Landroid/widget/TextView;

.field private mContentText:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mNSVLayout:Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;

.field private mProgressLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mNSVLayout:Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContainerLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContainerTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContainerDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-boolean v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->isBgColorDark:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->isBgColorDark:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
    .param p1, "x1"    # Z

    .line 51
    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->setLightStatusBar(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mProgressLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    .line 51
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setFullscreen()V
    .locals 4

    .line 122
    invoke-static {p0}, Lcom/mesalabs/cerberus/utils/Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 124
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 125
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "semAddExtensionFlags"

    invoke-static {v0, v1, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getAppBarLayout()Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setFitsSystemWindows(Z)V

    .line 130
    :goto_0
    return-void
.end method

.method private setLightStatusBar(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 109
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 112
    .local v1, "flags":I
    if-eqz p1, :cond_0

    .line 113
    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    .line 115
    :cond_0
    and-int/lit16 v1, v1, -0x2001

    .line 118
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/StateUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0085

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->finish()V

    .line 73
    :cond_0
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->setBaseContentView(I)V

    .line 75
    new-instance v0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 76
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initAppBar(Z)V

    .line 77
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->getAppBarLayout()Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v0

    new-instance v2, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;

    invoke-direct {v2, p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;-><init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->addOnOffsetChangedListener(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;)V

    .line 83
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v2, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$2;

    invoke-direct {v2, p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$2;-><init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b0

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 93
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->setFullscreen()V

    .line 96
    :cond_1
    const v2, 0x7f0900f1

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mImageView:Landroid/widget/ImageView;

    .line 97
    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mNSVLayout:Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;

    .line 98
    const v2, 0x7f090134

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mProgressLayout:Landroid/widget/FrameLayout;

    .line 99
    const v2, 0x7f090101

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContainerLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    const v2, 0x7f090140

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContainerTitle:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f090112

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContainerDate:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f090115

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mDivider:Landroid/view/View;

    .line 103
    const v2, 0x7f09010a

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->mContentText:Landroid/widget/TextView;

    .line 105
    new-instance v2, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;-><init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getChangelogHeaderImgUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getChangelogUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method

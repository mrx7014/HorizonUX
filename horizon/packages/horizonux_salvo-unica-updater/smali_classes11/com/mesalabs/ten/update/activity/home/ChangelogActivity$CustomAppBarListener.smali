.class abstract Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;
.super Ljava/lang/Object;
.source "ChangelogActivity.java"

# interfaces
.implements Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CustomAppBarListener"
.end annotation


# instance fields
.field public STATE_COLLAPSED:I

.field public STATE_EXPANDED:I

.field private mCurrentState:I

.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;


# direct methods
.method private constructor <init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 p1, 0x0

    iput p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->STATE_EXPANDED:I

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->STATE_COLLAPSED:I

    .line 137
    iput p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->mCurrentState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
    .param p2, "x1"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;

    .line 133
    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;-><init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V
    .locals 7
    .param p1, "layout"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .param p2, "verticalOffset"    # I

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 142
    .local v0, "totalScrollRange":I
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$500(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getInputMethodWindowVisibleHeight"

    invoke-static {v1, v2, v4, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .local v1, "inputMethodWindowVisibleHeight":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 145
    iget v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->mCurrentState:I

    iget v3, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->STATE_COLLAPSED:I

    if-eq v2, v3, :cond_0

    .line 146
    invoke-virtual {p0, p1, v3}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->onStateChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V

    .line 148
    :cond_0
    iget v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->STATE_COLLAPSED:I

    iput v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->mCurrentState:I

    goto :goto_0

    .line 150
    :cond_1
    iget v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->mCurrentState:I

    iget v3, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->STATE_EXPANDED:I

    if-eq v2, v3, :cond_2

    .line 151
    invoke-virtual {p0, p1, v3}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->onStateChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V

    .line 153
    :cond_2
    iget v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->STATE_EXPANDED:I

    iput v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->mCurrentState:I

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$600(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p2

    neg-int v6, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 158
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 159
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 160
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v3}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_1

    .line 161
    :cond_3
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v3}, Lcom/mesalabs/cerberus/utils/Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_1

    .line 164
    :cond_4
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$CustomAppBarListener;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v3}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 167
    :cond_5
    :goto_1
    return-void
.end method

.method public abstract onStateChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V
.end method

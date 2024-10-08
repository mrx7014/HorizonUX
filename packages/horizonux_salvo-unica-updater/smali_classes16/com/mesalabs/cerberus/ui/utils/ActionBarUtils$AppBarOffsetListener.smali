.class Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"

# interfaces
.implements Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBarOffsetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;


# direct methods
.method private constructor <init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;
    .param p2, "x1"    # Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$1;

    .line 434
    invoke-direct {p0, p1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;-><init>(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V
    .locals 8
    .param p1, "layout"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .param p2, "verticalOffset"    # I

    .line 438
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$200(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 439
    .local v0, "layoutPosition":I
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$300(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e3851eb    # 0.17999999f

    mul-float/2addr v1, v2

    .line 440
    .local v1, "alphaRange":F
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v2}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$300(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    .line 442
    .local v2, "toolbarTitleAlphaStart":F
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$200(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v4}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$400(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-gt v3, v4, :cond_0

    .line 443
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v3}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$500(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 445
    :cond_0
    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v3, v1

    int-to-float v4, v0

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    .line 447
    .local v3, "collapsedTitleAlpha":F
    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-ltz v6, :cond_1

    const/high16 v6, 0x437f0000    # 255.0f

    cmpg-float v7, v3, v6

    if-gtz v7, :cond_1

    .line 448
    div-float/2addr v3, v6

    .line 449
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v4}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$500(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 451
    :cond_1
    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    .line 452
    iget-object v5, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v5}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$500(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils$AppBarOffsetListener;->this$0:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-static {v4}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->access$500(Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 456
    .end local v3    # "collapsedTitleAlpha":F
    :goto_0
    return-void
.end method

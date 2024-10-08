.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10418
    const/4 v0, 0x0

    check-cast v0, Landroid/view/animation/Interpolator;

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10419
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 10422
    const/4 v0, 0x0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10423
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Landroid/view/animation/Interpolator;

    .line 10425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10426
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10428
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10429
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    .line 10430
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    .line 10431
    iput p3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10432
    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10433
    return-void
.end method

.method private validate()V
    .locals 2

    .line 10436
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 10437
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10438
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 10441
    return-void

    .line 10439
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 10444
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .line 10448
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .line 10452
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 10456
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .locals 1

    .line 10461
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    .line 10462
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 10464
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 10467
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 10471
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10472
    return-void
.end method

.method runIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 10475
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 10476
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10477
    .local v0, "var2":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10478
    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 10479
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10480
    .end local v0    # "var2":I
    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_4

    .line 10481
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->validate()V

    .line 10482
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 10483
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 10484
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    .line 10486
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 10489
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 10492
    :goto_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10493
    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 10494
    const-string v0, "SeslRecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10497
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_1

    .line 10499
    :cond_4
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10502
    :goto_1
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 10505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10506
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10507
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 10510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10511
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    .line 10512
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 10515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10516
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    .line 10517
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/animation/Interpolator;

    .line 10520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10521
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10522
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Landroid/view/animation/Interpolator;

    .line 10525
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDx:I

    .line 10526
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDy:I

    .line 10527
    iput p3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mDuration:I

    .line 10528
    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10530
    return-void
.end method

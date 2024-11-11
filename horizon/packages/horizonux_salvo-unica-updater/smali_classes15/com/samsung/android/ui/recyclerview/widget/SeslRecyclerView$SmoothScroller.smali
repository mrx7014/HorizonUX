.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$ScrollVectorProvider;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

.field private final mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10277
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    .line 10279
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10283
    return-void
.end method

.method static synthetic access$6100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 10273
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10286
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 10287
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 10288
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 10291
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10292
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 10293
    invoke-virtual {p0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v2, :cond_2

    .line 10294
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V

    .line 10295
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 10296
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 10298
    :cond_2
    const-string v1, "SeslRecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10299
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10303
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_5

    .line 10304
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V

    .line 10305
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    .line 10306
    .local v1, "var4":Z
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclingAction:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    .line 10307
    if-eqz v1, :cond_5

    .line 10308
    iget-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_4

    .line 10309
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10310
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_1

    .line 10312
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 10317
    .end local v1    # "var4":Z
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # I

    .line 10320
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 10324
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 10328
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .locals 1

    .line 10332
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .line 10336
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "var1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10341
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 10342
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .line 10345
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 10349
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "var1"    # Landroid/graphics/PointF;

    .line 10353
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 10354
    .local v0, "var2":F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 10355
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 10356
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .line 10359
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10360
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10363
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 10374
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10375
    return-void
.end method

.method start(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 10378
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 10379
    iput-object p2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 10380
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10383
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->access$5702(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)I

    .line 10384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    .line 10385
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10386
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10387
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->onStart()V

    .line 10388
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mViewFlinger:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10390
    return-void

    .line 10381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final stop()V
    .locals 3

    .line 10393
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v0, :cond_0

    .line 10394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRunning:Z

    .line 10395
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->onStop()V

    .line 10396
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->access$5702(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)I

    .line 10397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 10398
    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mTargetPosition:I

    .line 10399
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 10400
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-static {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->access$5800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;)V

    .line 10401
    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 10402
    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->mRecyclerView:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 10405
    :cond_0
    return-void
.end method

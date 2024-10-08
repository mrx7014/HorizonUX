.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 10689
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10690
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 10692
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 10693
    new-instance v0, Lcom/samsung/android/ui/widget/SeslOverScroller;

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ui/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    .line 10694
    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;)Lcom/samsung/android/ui/widget/SeslOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;

    .line 10681
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    return-object v0
.end method

.method private computeScrollDuration(IIII)I
    .locals 9
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 10697
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 10698
    .local v0, "var5":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 10700
    .local v1, "var6":I
    if-le v0, v1, :cond_0

    .line 10701
    const/4 v2, 0x1

    .local v2, "var7":Z
    goto :goto_0

    .line 10703
    .end local v2    # "var7":Z
    :cond_0
    const/4 v2, 0x0

    .line 10706
    .restart local v2    # "var7":Z
    :goto_0
    mul-int v3, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int p3, v3

    .line 10707
    mul-int v3, p1, p1

    mul-int v4, p2, p2

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int p2, v3

    .line 10708
    if-eqz v2, :cond_1

    .line 10709
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result p1

    goto :goto_1

    .line 10711
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result p1

    .line 10714
    :goto_1
    div-int/lit8 p4, p1, 0x2

    .line 10715
    int-to-float v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p1

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 10716
    .local v3, "var8":F
    int-to-float v5, p4

    .line 10717
    .local v5, "var9":F
    int-to-float v6, p4

    .line 10718
    .local v6, "var10":F
    invoke-direct {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    .line 10719
    if-lez p3, :cond_2

    .line 10720
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v7, v6, v3

    add-float/2addr v7, v5

    int-to-float v8, p3

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    .end local p1    # "var1":I
    .local v4, "var1":I
    goto :goto_3

    .line 10722
    .end local v4    # "var1":I
    .restart local p1    # "var1":I
    :cond_2
    if-eqz v2, :cond_3

    .line 10723
    move p2, v0

    goto :goto_2

    .line 10725
    :cond_3
    move p2, v1

    .line 10728
    :goto_2
    int-to-float v7, p2

    int-to-float v8, p1

    div-float/2addr v7, v8

    add-float/2addr v7, v4

    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v7, v4

    float-to-int v4, v7

    .line 10731
    .end local p1    # "var1":I
    .restart local v4    # "var1":I
    :goto_3
    const/16 p1, 0x7d0

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .line 10735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 10736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 10737
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2
    .param p1, "var1"    # F

    .line 10740
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .line 10744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 10745
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 10746
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10749
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10752
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 10753
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 10754
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 10755
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/ui/widget/SeslOverScroller;->fling(IIIIIIII)V

    .line 10756
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10757
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 10760
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 10761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 10763
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10764
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 10767
    :goto_0
    return-void
.end method

.method public run()V
    .locals 28

    .line 10771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 10772
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->stop()V

    goto/16 :goto_f

    .line 10774
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 10775
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->consumePendingUpdateOperations()V

    .line 10776
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    .line 10777
    .local v1, "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->mSmoothScroller:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;

    .line 10778
    .local v2, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    .line 10779
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)[I

    move-result-object v3

    .line 10780
    .local v3, "var3":[I
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getCurrX()I

    move-result v11

    .line 10781
    .local v11, "var4":I
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getCurrY()I

    move-result v12

    .line 10782
    .local v12, "var5":I
    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v13, v11, v5

    .line 10783
    .local v13, "var6":I
    iget v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v12, v5

    .line 10784
    .local v14, "var7":I
    const/4 v15, 0x0

    .line 10785
    .local v15, "var8":I
    const/16 v16, 0x0

    .line 10786
    .local v16, "var9":I
    iput v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 10787
    iput v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 10788
    const/16 v17, 0x0

    .line 10789
    .local v17, "var10":I
    const/16 v18, 0x0

    .line 10790
    .local v18, "var11":I
    const/16 v19, 0x0

    .line 10791
    .local v19, "var12":I
    const/16 v20, 0x0

    .line 10792
    .local v20, "var13":I
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v6, 0x0

    move-object/from16 v26, v6

    check-cast v26, [I

    const/4 v10, 0x1

    move v6, v13

    move v7, v14

    move-object v8, v3

    move-object/from16 v9, v26

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 10793
    aget v5, v3, v4

    sub-int/2addr v13, v5

    .line 10794
    aget v5, v3, v6

    sub-int/2addr v14, v5

    .line 10795
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    aget v7, v3, v6

    invoke-static {v5, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    goto :goto_0

    .line 10797
    :cond_1
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v5, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 10802
    :goto_0
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-eqz v5, :cond_9

    .line 10803
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startInterceptRequestLayout()V

    .line 10804
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onEnterLayoutOrScroll()V

    .line 10805
    const-string v5, "RV Scroll"

    invoke-static {v5}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 10806
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v7, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->fillRemainingScrollValues(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 10807
    if-eqz v13, :cond_2

    .line 10808
    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v5, v13, v7, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v5

    .line 10809
    .local v5, "var14":I
    sub-int v18, v13, v5

    goto :goto_1

    .line 10811
    .end local v5    # "var14":I
    :cond_2
    const/4 v5, 0x0

    .line 10814
    .restart local v5    # "var14":I
    :goto_1
    if-eqz v14, :cond_3

    .line 10815
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mRecycler:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;

    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v7, v14, v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Recycler;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)I

    move-result v19

    .line 10816
    sub-int v17, v14, v19

    .line 10817
    move/from16 v16, v19

    .line 10818
    move/from16 v20, v17

    .line 10819
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$6000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v7

    if-nez v7, :cond_3

    .line 10820
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v7, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 10821
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v7, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 10822
    move/from16 v20, v17

    .line 10823
    move/from16 v16, v19

    .line 10827
    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 10828
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->repositionShadowingViews()V

    .line 10829
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->onExitLayoutOrScroll()V

    .line 10830
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v7, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopInterceptRequestLayout(Z)V

    .line 10831
    move v7, v5

    .line 10832
    .local v7, "var15":I
    move/from16 v15, v16

    .line 10833
    move/from16 v17, v18

    .line 10834
    move/from16 v19, v20

    .line 10835
    if-eqz v2, :cond_8

    .line 10836
    move v7, v5

    .line 10837
    move/from16 v15, v16

    .line 10838
    move/from16 v17, v18

    .line 10839
    move/from16 v19, v20

    .line 10840
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v8

    if-nez v8, :cond_7

    .line 10841
    move v7, v5

    .line 10842
    move/from16 v15, v16

    .line 10843
    move/from16 v17, v18

    .line 10844
    move/from16 v19, v20

    .line 10845
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 10846
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mState:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v8

    .line 10847
    .end local v17    # "var10":I
    .local v8, "var10":I
    if-nez v8, :cond_4

    .line 10848
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 10849
    move/from16 v19, v20

    .line 10850
    move/from16 v17, v18

    .line 10851
    .end local v8    # "var10":I
    .restart local v17    # "var10":I
    move/from16 v15, v16

    .line 10852
    move v7, v5

    move/from16 v5, v17

    move/from16 v8, v19

    goto :goto_2

    .line 10853
    .end local v17    # "var10":I
    .restart local v8    # "var10":I
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v9

    if-lt v9, v8, :cond_5

    .line 10854
    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v2, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 10855
    sub-int v9, v13, v18

    sub-int v10, v14, v20

    invoke-static {v2, v9, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->access$6100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;II)V

    .line 10856
    move v7, v5

    .line 10857
    move/from16 v15, v16

    .line 10858
    move/from16 v17, v18

    .line 10859
    .end local v8    # "var10":I
    .restart local v17    # "var10":I
    move/from16 v19, v20

    move/from16 v5, v17

    move/from16 v8, v19

    goto :goto_2

    .line 10861
    .end local v17    # "var10":I
    .restart local v8    # "var10":I
    :cond_5
    sub-int v9, v13, v18

    sub-int v10, v14, v20

    invoke-static {v2, v9, v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->access$6100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;II)V

    .line 10862
    move v7, v5

    .line 10863
    move/from16 v15, v16

    .line 10864
    move/from16 v17, v18

    .line 10865
    .end local v8    # "var10":I
    .restart local v17    # "var10":I
    move/from16 v19, v20

    move/from16 v5, v17

    move/from16 v8, v19

    goto :goto_2

    .line 10845
    :cond_6
    move/from16 v5, v17

    move/from16 v8, v19

    goto :goto_2

    .line 10840
    :cond_7
    move/from16 v5, v17

    move/from16 v8, v19

    goto :goto_2

    .line 10835
    :cond_8
    move/from16 v5, v17

    move/from16 v8, v19

    goto :goto_2

    .line 10871
    .end local v5    # "var14":I
    .end local v7    # "var15":I
    :cond_9
    const/4 v7, 0x0

    move/from16 v5, v17

    move/from16 v8, v19

    .line 10874
    .end local v17    # "var10":I
    .end local v19    # "var12":I
    .local v5, "var10":I
    .restart local v7    # "var15":I
    .local v8, "var12":I
    :goto_2
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 10875
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 10878
    :cond_a
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b

    .line 10879
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 10882
    :cond_b
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/16 v27, 0x1

    move-object/from16 v21, v9

    move/from16 v22, v7

    move/from16 v23, v15

    move/from16 v24, v5

    move/from16 v25, v8

    invoke-virtual/range {v21 .. v27}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v9

    .line 10883
    .local v9, "var16":Z
    if-eqz v9, :cond_c

    .line 10884
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$6200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)[I

    move-result-object v10

    aput v4, v10, v4

    .line 10885
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$6200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)[I

    move-result-object v10

    aput v4, v10, v6

    .line 10888
    :cond_c
    if-nez v5, :cond_e

    if-eqz v8, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v21, v16

    move/from16 v6, v18

    move-object/from16 v16, v3

    goto/16 :goto_8

    .line 10889
    :cond_e
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getCurrVelocity()F

    move-result v10

    float-to-int v10, v10

    .line 10890
    .end local v16    # "var9":I
    .local v10, "var9":I
    const/16 v16, 0x0

    .line 10891
    .local v16, "var14":I
    if-eq v5, v11, :cond_11

    .line 10892
    if-gez v5, :cond_f

    .line 10893
    neg-int v4, v10

    .end local v16    # "var14":I
    .local v4, "var14":I
    goto :goto_4

    .line 10894
    .end local v4    # "var14":I
    .restart local v16    # "var14":I
    :cond_f
    if-lez v5, :cond_10

    .line 10895
    move/from16 v16, v10

    move/from16 v4, v16

    goto :goto_4

    .line 10897
    :cond_10
    const/16 v16, 0x0

    move/from16 v4, v16

    goto :goto_4

    .line 10891
    :cond_11
    move/from16 v4, v16

    .line 10901
    .end local v16    # "var14":I
    .restart local v4    # "var14":I
    :goto_4
    const/16 v16, 0x0

    .line 10902
    .end local v18    # "var11":I
    .local v16, "var11":I
    if-eq v8, v12, :cond_14

    .line 10903
    if-gez v8, :cond_12

    .line 10904
    neg-int v6, v10

    .end local v16    # "var11":I
    .local v6, "var11":I
    goto :goto_5

    .line 10905
    .end local v6    # "var11":I
    .restart local v16    # "var11":I
    :cond_12
    if-lez v8, :cond_13

    .line 10906
    move v6, v10

    .end local v16    # "var11":I
    .restart local v6    # "var11":I
    goto :goto_5

    .line 10908
    .end local v6    # "var11":I
    .restart local v16    # "var11":I
    :cond_13
    const/4 v6, 0x0

    .end local v16    # "var11":I
    .restart local v6    # "var11":I
    goto :goto_5

    .line 10902
    .end local v6    # "var11":I
    .restart local v16    # "var11":I
    :cond_14
    move/from16 v6, v16

    .line 10912
    .end local v16    # "var11":I
    .restart local v6    # "var11":I
    :goto_5
    if-eqz v9, :cond_16

    if-ltz v8, :cond_15

    goto :goto_6

    :cond_15
    move-object/from16 v16, v3

    move/from16 v21, v10

    goto :goto_7

    :cond_16
    :goto_6
    move-object/from16 v16, v3

    .end local v3    # "var3":[I
    .local v16, "var3":[I
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v3

    move/from16 v21, v10

    const/4 v10, 0x2

    .end local v10    # "var9":I
    .local v21, "var9":I
    if-eq v3, v10, :cond_17

    .line 10913
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->absorbGlows(II)V

    .line 10916
    :cond_17
    :goto_7
    if-eqz v9, :cond_18

    if-ltz v8, :cond_1b

    :cond_18
    if-nez v4, :cond_19

    if-eq v5, v11, :cond_19

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    if-nez v6, :cond_1a

    if-eq v8, v12, :cond_1a

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_1b

    .line 10917
    :cond_1a
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->abortAnimation()V

    .line 10921
    .end local v4    # "var14":I
    :cond_1b
    :goto_8
    if-nez v7, :cond_1c

    if-eqz v15, :cond_1d

    .line 10922
    :cond_1c
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3, v7, v15}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchOnScrolled(II)V

    .line 10925
    :cond_1d
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$6300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 10926
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 10930
    :cond_1e
    if-eqz v14, :cond_1f

    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v3, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-ne v15, v14, :cond_1f

    .line 10931
    const/4 v3, 0x1

    .local v3, "var18":Z
    goto :goto_9

    .line 10933
    .end local v3    # "var18":Z
    :cond_1f
    const/4 v3, 0x0

    .line 10937
    .restart local v3    # "var18":Z
    :goto_9
    if-eqz v13, :cond_20

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mLayout:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_20

    if-ne v7, v13, :cond_20

    .line 10938
    const/4 v4, 0x1

    .local v4, "var17":Z
    goto :goto_a

    .line 10940
    .end local v4    # "var17":Z
    :cond_20
    const/4 v4, 0x0

    .line 10943
    .restart local v4    # "var17":Z
    :goto_a
    if-nez v13, :cond_21

    if-eqz v14, :cond_22

    :cond_21
    if-nez v4, :cond_22

    if-nez v3, :cond_22

    .line 10944
    const/4 v3, 0x0

    goto :goto_b

    .line 10946
    :cond_22
    const/4 v3, 0x1

    .line 10949
    :goto_b
    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_25

    if-nez v3, :cond_23

    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .local v22, "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    invoke-virtual {v10, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->hasNestedScrollingParent(I)Z

    move-result v10

    if-nez v10, :cond_24

    goto :goto_c

    .end local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .restart local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :cond_23
    move-object/from16 v22, v1

    .line 10962
    .end local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .restart local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 10963
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    if-eqz v1, :cond_29

    .line 10964
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mGapWorker:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;

    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v10, v13, v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker;->postFromTraversal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;II)V

    goto :goto_e

    .line 10949
    .end local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .restart local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :cond_25
    move-object/from16 v22, v1

    .line 10950
    .end local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .restart local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :goto_c
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_26

    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$6400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 10951
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    int-to-float v10, v13

    move/from16 v17, v3

    .end local v3    # "var18":Z
    .local v17, "var18":Z
    int-to-float v3, v5

    move/from16 v23, v4

    .end local v4    # "var17":Z
    .local v23, "var17":Z
    int-to-float v4, v14

    move/from16 v24, v5

    .end local v5    # "var10":I
    .local v24, "var10":I
    int-to-float v5, v8

    invoke-static {v1, v10, v3, v4, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$6500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;FFFF)V

    .line 10952
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v1, v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_d

    .line 10950
    .end local v17    # "var18":Z
    .end local v23    # "var17":Z
    .end local v24    # "var10":I
    .restart local v3    # "var18":Z
    .restart local v4    # "var17":Z
    .restart local v5    # "var10":I
    :cond_26
    move/from16 v17, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .line 10955
    .end local v3    # "var18":Z
    .end local v4    # "var17":Z
    .end local v5    # "var10":I
    .restart local v17    # "var18":Z
    .restart local v23    # "var17":Z
    .restart local v24    # "var10":I
    :goto_d
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 10956
    invoke-static {}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$5400()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 10957
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mPrefetchRegistry:Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslGapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 10960
    :cond_27
    iget-object v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->stopNestedScroll(I)V

    goto :goto_e

    .line 10778
    .end local v6    # "var11":I
    .end local v7    # "var15":I
    .end local v8    # "var12":I
    .end local v9    # "var16":Z
    .end local v11    # "var4":I
    .end local v12    # "var5":I
    .end local v13    # "var6":I
    .end local v14    # "var7":I
    .end local v15    # "var8":I
    .end local v16    # "var3":[I
    .end local v17    # "var18":Z
    .end local v20    # "var13":I
    .end local v21    # "var9":I
    .end local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .end local v23    # "var17":Z
    .end local v24    # "var10":I
    .restart local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :cond_28
    move-object/from16 v22, v1

    .line 10969
    .end local v1    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    .restart local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :cond_29
    :goto_e
    if-eqz v2, :cond_2b

    .line 10970
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 10971
    const/4 v1, 0x0

    invoke-static {v2, v1, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->access$6100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;II)V

    .line 10974
    :cond_2a
    iget-boolean v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v1, :cond_2b

    .line 10975
    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;->stop()V

    .line 10979
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 10982
    .end local v2    # "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$SmoothScroller;
    .end local v22    # "var1":Lcom/samsung/android/ui/widget/SeslOverScroller;
    :goto_f
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 10985
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 10986
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 10989
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 10990
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 10993
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 10994
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 9
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Landroid/view/animation/Interpolator;

    .line 10999
    if-eqz p1, :cond_0

    .line 11000
    const/4 v0, 0x2

    .local v0, "var5":B
    goto :goto_0

    .line 11002
    .end local v0    # "var5":B
    :cond_0
    const/4 v0, 0x1

    .line 11005
    .restart local v0    # "var5":B
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startNestedScroll(II)Z

    .line 11006
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v1, 0x0

    move-object v7, v1

    check-cast v7, [I

    const/4 v8, 0x1

    move v4, p1

    move v5, p2

    move-object v6, v7

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11007
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v1, p4, :cond_1

    .line 11008
    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11009
    new-instance v1, Lcom/samsung/android/ui/widget/SeslOverScroller;

    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/samsung/android/ui/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    .line 11012
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 11013
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingY:I

    .line 11014
    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mLastFlingX:I

    .line 11015
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/ui/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 11016
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    .line 11017
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller;->computeScrollOffset()Z

    .line 11020
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11023
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 11024
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/animation/Interpolator;

    .line 11027
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    .line 11028
    .local v0, "var4":I
    move-object v1, p3

    .line 11029
    .local v1, "var5":Landroid/view/animation/Interpolator;
    if-nez p3, :cond_0

    .line 11030
    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 11033
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 11034
    return-void
.end method

.method public stop()V
    .locals 1

    .line 11037
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11038
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewFlinger;->mScroller:Lcom/samsung/android/ui/widget/SeslOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->abortAnimation()V

    .line 11039
    return-void
.end method

.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;
.super Landroid/os/Handler;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 555
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "var1"    # Landroid/os/Message;

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    .line 559
    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v2, v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    if-nez v2, :cond_0

    .line 560
    const-string v2, "SeslRecyclerView"

    const-string v3, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 562
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;J)J

    .line 563
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$102(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;J)J

    .line 564
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v2

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_20

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v2

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_20

    .line 565
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 566
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 567
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 568
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 571
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v2, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z

    .line 574
    :cond_4
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    .line 576
    .local v2, "var2":I
    iget-object v4, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v5, v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 577
    const/4 v4, 0x1

    .local v4, "var3":Z
    goto :goto_0

    .line 579
    .end local v4    # "var3":Z
    :cond_5
    const/4 v4, 0x0

    .line 582
    .restart local v4    # "var3":Z
    :goto_0
    move v5, v4

    .line 583
    .local v5, "var4":Z
    if-nez v4, :cond_7

    .line 584
    move v5, v4

    .line 585
    if-lez v2, :cond_7

    .line 586
    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 587
    .local v6, "var6":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getBottom()I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_6

    .line 588
    const/4 v5, 0x0

    goto :goto_1

    .line 590
    :cond_6
    const/4 v5, 0x1

    .line 596
    .end local v6    # "var6":Landroid/view/View;
    :cond_7
    :goto_1
    iget-object v6, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v6}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v6

    if-lez v6, :cond_8

    .line 597
    const/4 v6, 0x1

    .local v6, "var7":Z
    goto :goto_2

    .line 599
    .end local v6    # "var7":Z
    :cond_8
    const/4 v6, 0x0

    .line 602
    .restart local v6    # "var7":Z
    :goto_2
    move v4, v6

    .line 603
    const/4 v7, 0x0

    if-nez v6, :cond_a

    .line 604
    move v4, v6

    .line 605
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a

    .line 606
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v8, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_9

    .line 607
    const/4 v4, 0x1

    goto :goto_3

    .line 609
    :cond_9
    const/4 v4, 0x0

    .line 614
    :cond_a
    :goto_3
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)F

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v3, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 615
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v8

    const-wide/16 v11, 0x2

    cmp-long v8, v8, v11

    const-wide/16 v11, 0x4

    if-lez v8, :cond_b

    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-gez v8, :cond_b

    .line 616
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    goto :goto_4

    .line 617
    :cond_b
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    const-wide/16 v11, 0x5

    if-ltz v8, :cond_c

    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-gez v8, :cond_c

    .line 618
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    goto :goto_4

    .line 619
    :cond_c
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-ltz v8, :cond_d

    .line 620
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v9, v11

    invoke-static {v8, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 624
    :cond_d
    :goto_4
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    .line 626
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    .line 627
    .local v8, "var5":I
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_e

    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_10

    .line 628
    :cond_e
    move v2, v8

    .line 629
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    if-ne v11, v12, :cond_f

    .line 630
    goto/16 :goto_5

    .line 633
    :cond_f
    move v2, v8

    .line 634
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 635
    goto/16 :goto_5

    .line 639
    :cond_10
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1602(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 640
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 641
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 642
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 643
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1902(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z

    .line 644
    move v2, v8

    goto :goto_5

    .line 648
    .end local v8    # "var5":I
    :cond_11
    iget-object v8, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v8

    mul-int/2addr v8, v3

    .line 649
    .restart local v8    # "var5":I
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_12

    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_14

    .line 650
    :cond_12
    move v2, v8

    .line 651
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    if-ne v11, v12, :cond_13

    .line 652
    goto :goto_5

    .line 655
    :cond_13
    move v2, v8

    .line 656
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 657
    goto :goto_5

    .line 661
    :cond_14
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1602(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 662
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2002(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 663
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2202(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 664
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)I

    .line 665
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v11, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1902(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z

    .line 666
    move v2, v8

    .line 670
    :goto_5
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {v11, v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_20

    .line 671
    if-gez v2, :cond_15

    if-nez v4, :cond_16

    :cond_15
    if-lez v2, :cond_19

    if-nez v5, :cond_16

    goto :goto_7

    .line 710
    :cond_16
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v10, v9, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->startNestedScroll(II)Z

    .line 711
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v15, v9

    check-cast v15, [I

    const/16 v16, 0x1

    move v13, v2

    move-object v14, v15

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v10

    if-nez v10, :cond_17

    .line 712
    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    check-cast v9, Landroid/view/MotionEvent;

    invoke-virtual {v10, v7, v2, v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 713
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v9, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 714
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3400(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 715
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    iget-object v10, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v10}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3600(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v10

    invoke-static {v3, v9, v10, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;IIZ)V

    goto :goto_6

    .line 718
    :cond_17
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v3, v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 721
    :cond_18
    :goto_6
    iget-object v3, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$4000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v3, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 672
    :cond_19
    :goto_7
    iget-object v11, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v11}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v11

    .line 673
    .local v11, "var8":I
    if-eqz v11, :cond_1b

    if-ne v11, v3, :cond_1a

    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2700(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v12

    if-nez v12, :cond_1a

    goto :goto_8

    .line 676
    :cond_1a
    const/4 v5, 0x0

    goto :goto_9

    .line 674
    :cond_1b
    :goto_8
    const/4 v5, 0x1

    .line 679
    :goto_9
    if-eqz v5, :cond_1e

    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 680
    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 681
    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->ensureBottomGlow()V

    .line 682
    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v12

    const v13, 0x3ecccccd    # 0.4f

    if-ne v12, v9, :cond_1c

    .line 683
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v12

    iget-object v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v14

    invoke-virtual {v9, v12, v14}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 684
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9, v13, v10, v7}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 685
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 686
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    goto :goto_a

    .line 688
    :cond_1c
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    if-ne v9, v3, :cond_1d

    .line 689
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    iget-object v12, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v12

    iget-object v14, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v14}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getHeight()I

    move-result v14

    invoke-virtual {v9, v12, v14}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSize(II)V

    .line 690
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3000(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9, v13, v10, v7}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 691
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 692
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3200(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;I)V

    .line 693
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 694
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->onRelease()V

    .line 698
    :cond_1d
    :goto_a
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidate()V

    .line 699
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z

    .line 702
    :cond_1e
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$3300(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)I

    move-result v9

    if-ne v9, v3, :cond_1f

    .line 703
    iget-object v9, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-virtual {v9, v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->setScrollState(I)V

    .line 706
    :cond_1f
    if-nez v5, :cond_20

    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2800(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 707
    iget-object v7, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    invoke-static {v7, v3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->access$2802(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Z)Z

    .line 728
    .end local v2    # "var2":I
    .end local v4    # "var3":Z
    .end local v5    # "var4":Z
    .end local v6    # "var7":Z
    .end local v8    # "var5":I
    .end local v11    # "var8":I
    :cond_20
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

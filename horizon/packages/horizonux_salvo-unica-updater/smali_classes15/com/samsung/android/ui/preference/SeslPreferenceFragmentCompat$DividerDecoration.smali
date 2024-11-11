.class Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;
.super Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;
.source "SeslPreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field public mAllowDividerAfterLastItem:Z

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    .line 505
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 510
    return-void
.end method


# virtual methods
.method public final canScrollUp(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 7
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 513
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 514
    .local v0, "var2":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    .line 515
    .local v1, "var3":Z
    const/4 v2, 0x0

    .line 516
    .local v2, "var4":Z
    move v3, v2

    .line 517
    .local v3, "var5":Z
    if-eqz v1, :cond_1

    .line 518
    move-object v4, v0

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;

    invoke-virtual {v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    if-lez v4, :cond_0

    .line 519
    const/4 v3, 0x1

    goto :goto_0

    .line 521
    :cond_0
    const/4 v3, 0x0

    .line 524
    :goto_0
    if-nez v3, :cond_1

    .line 525
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 526
    .local v4, "var6":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 527
    move v3, v2

    .line 528
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 529
    const/4 v3, 0x1

    .line 535
    .end local v4    # "var6":Landroid/view/View;
    :cond_1
    return v3
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V
    .locals 16
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    .param p3, "var3"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    .line 541
    .local v3, "var4":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getWidth()I

    move-result v4

    .line 542
    .local v4, "var5":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 543
    const/4 v5, 0x0

    .line 544
    .local v5, "var6":I
    const/4 v6, 0x0

    .line 548
    .local v6, "var7":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    move-object v7, v6

    .local v7, "var8":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    :goto_0
    if-ge v5, v3, :cond_6

    .line 549
    invoke-virtual {v2, v5}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 550
    .local v8, "var9":Landroid/view/View;
    invoke-virtual {v2, v8}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v9

    .line 552
    .local v9, "var12":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    instance-of v10, v9, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    if-eqz v10, :cond_0

    .line 553
    move-object v10, v9

    check-cast v10, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    .local v10, "var13":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    goto :goto_1

    .line 555
    .end local v10    # "var13":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    :cond_0
    const/4 v10, 0x0

    .line 558
    .restart local v10    # "var13":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    :goto_1
    if-nez v5, :cond_1

    .line 559
    move-object v11, v10

    .local v11, "var10":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    goto :goto_2

    .line 561
    .end local v11    # "var10":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    :cond_1
    move-object v11, v6

    .line 562
    .restart local v11    # "var10":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    const/4 v12, 0x1

    if-ne v5, v12, :cond_2

    .line 563
    move-object v7, v10

    .line 564
    move-object v11, v6

    .line 568
    :cond_2
    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 569
    .local v12, "var11":I
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 570
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    iget v15, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    add-int/2addr v15, v12

    invoke-virtual {v13, v14, v12, v4, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 574
    :cond_3
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v13}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$100(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)I

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v10, :cond_5

    iget-boolean v13, v10, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawBackground:Z

    if-eqz v13, :cond_5

    .line 575
    invoke-virtual {v10}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->seslIsDrawSubheaderRound()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 576
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v13}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$200(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    move-result-object v13

    iget v14, v10, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v13, v14}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    .line 577
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v13}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$200(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;

    move-result-object v13

    invoke-virtual {v13, v8, v1}, Lcom/samsung/android/ui/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 579
    :cond_4
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v13}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$300(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;

    move-result-object v13

    iget v14, v10, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->mDrawCorners:I

    invoke-virtual {v13, v14}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 580
    iget-object v13, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v13}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$300(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;

    move-result-object v13

    invoke-virtual {v13, v8, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 584
    :cond_5
    :goto_3
    nop

    .end local v8    # "var9":Landroid/view/View;
    .end local v9    # "var12":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v10    # "var13":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    .end local v12    # "var11":I
    add-int/lit8 v5, v5, 0x1

    .line 548
    move-object v6, v11

    goto/16 :goto_0

    .line 587
    .end local v11    # "var10":Lcom/samsung/android/ui/preference/PreferenceViewHolder;
    :cond_6
    iget-object v8, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v8}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$100(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)I

    move-result v8

    if-eqz v8, :cond_9

    .line 588
    iget-object v8, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v8}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$100(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->canScrollUp(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v6}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->seslIsDrawSubheaderRound()Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v7, :cond_7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->seslGetDrawCorners()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_8

    .line 589
    :cond_7
    iget-object v8, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v8}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$400(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    .line 590
    return-void

    .line 593
    :cond_8
    iget-object v8, v0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v8}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$500(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/util/SeslRoundedCorner;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    .line 596
    :cond_9
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .line 599
    iput-boolean p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 600
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    goto :goto_0

    .line 606
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 609
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 610
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$000(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 611
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 614
    iput p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 615
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$000(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 616
    return-void
.end method

.method public final shouldDrawDividerBelow(Landroid/view/View;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)Z
    .locals 6
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 619
    invoke-virtual {p2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 621
    .local v0, "var3":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    instance-of v1, v0, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    const/4 v1, 0x1

    .local v1, "var4":Z
    goto :goto_0

    .line 624
    .end local v1    # "var4":Z
    :cond_0
    const/4 v1, 0x0

    .line 627
    .restart local v1    # "var4":Z
    :goto_0
    if-nez v1, :cond_1

    .line 628
    const/4 v2, 0x0

    return v2

    .line 630
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 631
    .local v2, "var5":Z
    invoke-virtual {p2, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 632
    .local v3, "var7":I
    invoke-virtual {p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 633
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 634
    .local v4, "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    instance-of v5, v4, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/ui/preference/PreferenceViewHolder;

    invoke-virtual {v5}, Lcom/samsung/android/ui/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 635
    const/4 v2, 0x1

    goto :goto_1

    .line 637
    :cond_2
    const/4 v2, 0x0

    .line 641
    .end local v4    # "var6":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    :goto_1
    return v2
.end method

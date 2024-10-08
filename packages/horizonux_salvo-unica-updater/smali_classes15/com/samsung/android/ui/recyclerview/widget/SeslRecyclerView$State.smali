.class public Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State$LayoutState;
    }
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRemainingScrollHorizontal:I

.field mRemainingScrollVertical:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10543
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 10547
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 10548
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 10549
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 10550
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 10551
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    .line 10554
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    .line 10555
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    .line 10556
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 10557
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTargetPosition:I

    .line 10558
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    .line 10560
    return-void
.end method

.method static synthetic access$5702(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p1, "x1"    # I

    .line 10538
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTargetPosition:I

    return p1
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "var1"    # I

    .line 10563
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 10566
    return-void

    .line 10564
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public didStructureChange()Z
    .locals 1

    .line 10569
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 10574
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 10575
    const/4 v0, 0x0

    return-object v0

    .line 10577
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 10582
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 10583
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    .local v0, "var1":I
    goto :goto_0

    .line 10585
    .end local v0    # "var1":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 10588
    .restart local v0    # "var1":I
    :goto_0
    return v0
.end method

.method public getRemainingScrollHorizontal()I
    .locals 1

    .line 10592
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRemainingScrollHorizontal:I

    return v0
.end method

.method public getRemainingScrollVertical()I
    .locals 1

    .line 10596
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRemainingScrollVertical:I

    return v0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .line 10600
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .line 10605
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10606
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 10608
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 10611
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public isMeasuring()Z
    .locals 1

    .line 10615
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .line 10619
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method prepareForNestedPrefetch(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;

    .line 10623
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mLayoutStep:I

    .line 10624
    invoke-virtual {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 10625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    .line 10626
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTrackOldChangeHolders:Z

    .line 10627
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 10628
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/Object;

    .line 10631
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 10632
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 10635
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10636
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 10639
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 10640
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 10643
    :cond_0
    return-void
.end method

.method reset()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .locals 1

    .line 10646
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTargetPosition:I

    .line 10647
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 10648
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 10651
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    .line 10652
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    .line 10653
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    .line 10654
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .line 10662
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .line 10666
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

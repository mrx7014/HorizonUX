.class public abstract Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;,
        Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field static final ANIMATION_TYPE_DEFAULT:I = 0x1

.field static final ANIMATION_TYPE_EXPAND_COLLAPSE:I = 0x2

.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_CHANGED:I = 0x2

.field public static final FLAG_INVALIDATED:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_REMOVED:I = 0x8


# instance fields
.field private mAddDuration:J

.field private mAnimationType:I

.field private mChangeDuration:J

.field private mExpandCollapseDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

.field private mHostView:Landroid/view/View;

.field private mListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 7166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7155
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mAddDuration:J

    .line 7156
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mAnimationType:I

    .line 7157
    const-wide/16 v2, 0xfa

    iput-wide v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mChangeDuration:J

    .line 7158
    const-wide/16 v4, 0x2bc

    iput-wide v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mExpandCollapseDuration:J

    .line 7159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 7160
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7161
    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    .line 7162
    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 7163
    iput-wide v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mMoveDuration:J

    .line 7164
    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 7167
    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I
    .locals 5
    .param p0, "var0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7170
    invoke-static {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->access$4900(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 7172
    .local v0, "var1":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7173
    const/4 v1, 0x4

    .local v1, "var2":I
    goto :goto_0

    .line 7175
    .end local v1    # "var2":I
    :cond_0
    move v1, v0

    .line 7176
    .restart local v1    # "var2":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    .line 7177
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getOldPosition()I

    move-result v2

    .line 7178
    .local v2, "var3":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 7179
    .local v3, "var4":I
    move v1, v0

    .line 7180
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 7181
    move v1, v0

    .line 7182
    if-eq v3, v4, :cond_1

    .line 7183
    move v1, v0

    .line 7184
    if-eq v2, v3, :cond_1

    .line 7185
    or-int/lit16 v1, v0, 0x800

    .line 7192
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract animateAppearance(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateChange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateDisappearance(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animatePersistence(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7204
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 7208
    .local p2, "var2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public clearGroupViewHolderInternal()V
    .locals 1

    .line 7212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7213
    return-void
.end method

.method public final dispatchAnimationFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7216
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->onAnimationFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7217
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 7218
    invoke-interface {v0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7221
    :cond_0
    return-void
.end method

.method public final dispatchAnimationStarted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7224
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->onAnimationStarted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 7225
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .line 7228
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7230
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7231
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 7230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7234
    .end local v1    # "var2":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7235
    return-void
.end method

.method public abstract endAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .line 7242
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .line 7246
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getExpandCollapseDuration()J
    .locals 2

    .line 7250
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mExpandCollapseDuration:J

    return-wide v0
.end method

.method public getGroupViewHolderInternal()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .locals 1

    .line 7254
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1

    .line 7258
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method public getItemAnimationTypeInternal()I
    .locals 1

    .line 7262
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mAnimationType:I

    return v0
.end method

.method public getMoveDuration()J
    .locals 2

    .line 7266
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .line 7270
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .line 7276
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 7277
    .local v0, "var2":Z
    if-eqz p1, :cond_1

    .line 7278
    if-nez v0, :cond_0

    .line 7279
    invoke-interface {p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    goto :goto_0

    .line 7281
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7285
    :cond_1
    :goto_0
    return v0
.end method

.method public obtainHolderInfo()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .line 7289
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7293
    return-void
.end method

.method public onAnimationStarted(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7296
    return-void
.end method

.method public recordPostLayoutInformation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7299
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->obtainHolderInfo()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILjava/util/List;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;
    .param p2, "var2"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$State;",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .line 7303
    .local p4, "var4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->obtainHolderInfo()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 0
    .param p1, "var1"    # J

    .line 7309
    iput-wide p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mAddDuration:J

    .line 7310
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 0
    .param p1, "var1"    # J

    .line 7313
    iput-wide p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mChangeDuration:J

    .line 7314
    return-void
.end method

.method public setGroupViewHolderInternal(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7317
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mGroupViewHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 7318
    return-void
.end method

.method public setHostView(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .line 7321
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mHostView:Landroid/view/View;

    .line 7322
    return-void
.end method

.method public setItemAnimationTypeInternal(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 7325
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mAnimationType:I

    .line 7326
    return-void
.end method

.method setListener(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 7329
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mListener:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 7330
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 0
    .param p1, "var1"    # J

    .line 7333
    iput-wide p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mMoveDuration:J

    .line 7334
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 0
    .param p1, "var1"    # J

    .line 7337
    iput-wide p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 7338
    return-void
.end method

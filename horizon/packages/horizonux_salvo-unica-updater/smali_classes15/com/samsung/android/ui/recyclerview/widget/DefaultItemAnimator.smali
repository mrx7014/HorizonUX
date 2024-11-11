.class public Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;
.super Lcom/samsung/android/ui/recyclerview/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;,
        Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAddDuration:J

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeDuration:J

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveDuration:J

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/ui/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 37
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddDuration:J

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 40
    const-wide/16 v2, 0x14a

    iput-wide v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeDuration:J

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 43
    iput-wide v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveDuration:J

    .line 44
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 51
    iput-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveDuration:J

    return-void
.end method

.method private animateRemoveImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 189
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 190
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 191
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 208
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 390
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 391
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 392
    .local v1, "changeInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 394
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 390
    .end local v1    # "changeInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 401
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    .line 404
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z

    .line 407
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "changeInfo"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    .line 411
    iput-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    goto :goto_0

    .line 412
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 413
    iput-object v2, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 414
    const/4 v0, 0x1

    .line 418
    :goto_0
    iget-object v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 419
    iget-object v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 420
    iget-object v1, p2, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 421
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 422
    const/4 v1, 0x1

    return v1

    .line 416
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 505
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 508
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 509
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 510
    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 213
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method animateAddImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 219
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 220
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 221
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$5;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 242
    return-void
.end method

.method public animateChange(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)Z
    .locals 17
    .param p1, "oldHolder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 317
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-ne v14, v15, :cond_0

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->animateMove(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 320
    :cond_0
    iget-object v0, v14, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 321
    .local v0, "prevTranslationX":F
    iget-object v1, v14, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 322
    .local v1, "prevTranslationY":F
    iget-object v2, v14, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 323
    .local v2, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 324
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 325
    .local v3, "deltaX":I
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 326
    .local v4, "deltaY":I
    iget-object v5, v14, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 327
    iget-object v5, v14, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 328
    iget-object v5, v14, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 329
    if-eqz v15, :cond_1

    .line 330
    invoke-direct {v6, v15}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 331
    iget-object v5, v15, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 332
    iget-object v5, v15, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    iget-object v5, v15, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 335
    :cond_1
    iget-object v5, v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v7, v13

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v16, v0

    move-object v0, v13

    .end local v0    # "prevTranslationX":F
    .local v16, "prevTranslationX":F
    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method animateChangeImpl(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 8
    .param p1, "changeInfo"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 340
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 341
    .local v0, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 342
    .local v2, "view":Landroid/view/View;
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 343
    .local v3, "newHolder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 344
    .local v1, "newView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 345
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 346
    .local v5, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget v6, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 348
    iget v6, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 349
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v5, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 365
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 367
    .end local v5    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_2
    if-eqz v1, :cond_3

    .line 368
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 369
    .local v5, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$9;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$9;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 387
    .end local v5    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_3
    return-void
.end method

.method public animateMove(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)Z
    .locals 15
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 246
    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 247
    .local v7, "view":Landroid/view/View;
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v8, p2, v0

    .line 248
    .end local p2    # "fromX":I
    .local v8, "fromX":I
    iget-object v0, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int v9, p3, v0

    .line 249
    .end local p3    # "fromY":I
    .local v9, "fromY":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 250
    sub-int v10, p4, v8

    .line 251
    .local v10, "deltaX":I
    sub-int v11, p5, v9

    .line 252
    .local v11, "deltaY":I
    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 253
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 254
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    if-eqz v10, :cond_1

    .line 257
    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 259
    :cond_1
    if-eqz v11, :cond_2

    .line 260
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 262
    :cond_2
    move-object v12, p0

    iget-object v13, v12, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v14, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method animateMoveImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)V
    .locals 15
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 267
    move-object v7, p0

    move-object/from16 v8, p1

    iget-object v9, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 268
    .local v9, "view":Landroid/view/View;
    sub-int v10, p4, p2

    .line 269
    .local v10, "deltaX":I
    sub-int v11, p5, p3

    .line 270
    .local v11, "deltaY":I
    const/4 v0, 0x0

    if-eqz v10, :cond_0

    .line 271
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 273
    :cond_0
    if-eqz v11, :cond_1

    .line 274
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 276
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 277
    .local v12, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v0, v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    .line 280
    .local v0, "recyclerView":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    iget v1, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mBlackTop:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->mChildHelper:Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;

    invoke-virtual {v2}, Lcom/samsung/android/ui/recyclerview/widget/SeslChildHelper;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 281
    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$6;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;)V

    invoke-virtual {v12, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 289
    .end local v0    # "recyclerView":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$7;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v10

    move-object v4, v9

    move v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$7;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 313
    return-void
.end method

.method public animateRemove(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 626
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 619
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 620
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 619
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 622
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 531
    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
    .locals 8
    .param p1, "item"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 427
    iget-object v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 428
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 429
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 430
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 431
    .local v3, "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-ne v4, p1, :cond_0

    .line 432
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 433
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 435
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 429
    .end local v3    # "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 439
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 440
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 441
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 449
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 450
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 451
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 452
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 448
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 455
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 456
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 457
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_7

    .line 458
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 459
    .local v6, "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    if-ne v7, p1, :cond_6

    .line 460
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 461
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 463
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 464
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 465
    iget-object v7, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 457
    .end local v6    # "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 455
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 471
    .end local v1    # "i":I
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-ltz v1, :cond_a

    .line 472
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 473
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 474
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 476
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 477
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 471
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 482
    .end local v1    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 487
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 502
    return-void
.end method

.method public endAnimations()V
    .locals 11

    .line 535
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 536
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 537
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 538
    .local v3, "item":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 539
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 540
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 541
    iget-object v2, v3, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 542
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 536
    .end local v3    # "item":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 544
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 545
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 546
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 547
    .local v3, "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 548
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    .end local v3    # "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 550
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 551
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    .line 552
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 553
    .local v4, "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v5, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 554
    invoke-virtual {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 555
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 551
    .end local v4    # "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 557
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 559
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 558
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 561
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 563
    return-void

    .line 566
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 567
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_7

    .line 568
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 569
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 570
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 571
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 572
    .local v7, "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v8, v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 573
    .local v8, "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v9, v8, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 574
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 575
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 576
    iget-object v10, v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 577
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 578
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 579
    iget-object v10, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 570
    .end local v7    # "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v8    # "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 567
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 583
    .end local v4    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 584
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_a

    .line 585
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 586
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_7
    if-ltz v5, :cond_9

    .line 588
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 589
    .local v6, "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v7, v6, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 590
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 591
    invoke-virtual {p0, v6}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 592
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 593
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 594
    iget-object v8, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 587
    .end local v6    # "item":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 584
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 598
    .end local v2    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 599
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_8
    if-ltz v2, :cond_d

    .line 600
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 601
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 602
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_9
    if-ltz v4, :cond_c

    .line 603
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 604
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 605
    iget-object v5, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 602
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 599
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 610
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 611
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 612
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 613
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 616
    return-void
.end method

.method public getAddDuration()J
    .locals 2

    .line 630
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .line 642
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .line 638
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .line 634
    iget-wide v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 516
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 518
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 519
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 514
    :goto_1
    return v0
.end method

.method public runPendingAnimations()V
    .locals 15

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 99
    .local v0, "removalsPending":Z
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 100
    .local v1, "movesPending":Z
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 101
    .local v2, "changesPending":Z
    iget-object v3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 102
    .local v3, "additionsPending":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 106
    .local v5, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 107
    .end local v5    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_0

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 109
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 114
    new-instance v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 124
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 126
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-static {v7, v6, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 127
    .end local v7    # "view":Landroid/view/View;
    goto :goto_1

    .line 128
    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 131
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 136
    new-instance v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$2;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 146
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 148
    .local v7, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v8, v7, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-static {v8, v6, v9, v10}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 149
    .end local v7    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_2

    .line 150
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 153
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v6, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 158
    new-instance v6, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;

    invoke-direct {v6, p0, v5}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;-><init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 168
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 176
    :cond_6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 169
    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_4

    :cond_8
    move-wide v9, v7

    .line 170
    .local v9, "removeDuration":J
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_5

    :cond_9
    move-wide v11, v7

    .line 171
    .local v11, "moveDuration":J
    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 172
    .local v7, "changeDuration":J
    :cond_a
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 173
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 174
    .local v4, "view":Landroid/view/View;
    invoke-static {v4, v6, v13, v14}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 179
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    :cond_b
    :goto_6
    return-void
.end method

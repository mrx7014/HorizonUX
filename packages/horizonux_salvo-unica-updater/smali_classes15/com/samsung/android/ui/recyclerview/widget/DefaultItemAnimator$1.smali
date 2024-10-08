.class Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 118
    .local v1, "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v3, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iget v4, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;IIII)V

    .line 119
    .end local v1    # "moveInfo":Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

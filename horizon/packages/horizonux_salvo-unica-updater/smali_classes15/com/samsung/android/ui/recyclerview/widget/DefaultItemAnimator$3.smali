.class Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    .line 162
    .local v1, "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->animateAddImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 163
    .end local v1    # "holder":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;
    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

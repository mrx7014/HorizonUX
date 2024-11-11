.class Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    .line 193
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 206
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 196
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveStarting(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;)V

    .line 197
    return-void
.end method

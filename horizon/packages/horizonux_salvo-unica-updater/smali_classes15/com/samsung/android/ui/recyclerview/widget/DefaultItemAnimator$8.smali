.class Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    .line 349
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 358
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 364
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 352
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 353
    return-void
.end method

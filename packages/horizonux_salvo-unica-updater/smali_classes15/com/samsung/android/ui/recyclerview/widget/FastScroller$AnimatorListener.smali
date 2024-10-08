.class Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 464
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
    .param p2, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 484
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 468
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 469
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 470
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$200(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$302(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;I)I

    .line 474
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$400(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;I)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$302(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;I)I

    .line 477
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$500(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V

    .line 479
    :goto_0
    return-void
.end method

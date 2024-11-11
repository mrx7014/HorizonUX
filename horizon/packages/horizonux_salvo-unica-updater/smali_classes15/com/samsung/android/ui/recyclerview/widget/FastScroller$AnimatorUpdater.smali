.class Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller;
    .param p2, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/FastScroller$1;

    .line 487
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 490
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 491
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$600(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 492
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$700(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Lcom/samsung/android/ui/recyclerview/widget/FastScroller;

    invoke-static {v1}, Lcom/samsung/android/ui/recyclerview/widget/FastScroller;->access$500(Lcom/samsung/android/ui/recyclerview/widget/FastScroller;)V

    .line 494
    return-void
.end method

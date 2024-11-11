.class Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$3;
.super Ljava/lang/Object;
.source "SeslCollapsingToolbarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->animateScrim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    .line 642
    iput-object p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$3;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 645
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$3;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 646
    return-void
.end method
